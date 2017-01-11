class EventsController < ApplicationController

  skip_before_action :authenticate_teacher!, only: [:index, :show]
  before_action :set_event, only: [:edit, :show, :update, :destroy]
  
  def new
  	@event = Event.new
  	@event_attachment = @event.event_attachments.build
  end

  def create
  	@event = Event.create(event_params)
  	if @event.save
	  	if params[:event_attachments] && params[:event_attachments]['picture'].count <= 5
	      params[:event_attachments]['picture'].each do |a|
	        @event_attachment = @event.event_attachments.create(:picture => a)
	      end
	    else
	      error_message = "Max 5 attachments are allowed."
	    end
	    flash[:success] = "Successfully created the event."
	    redirect_to @event
	  else
	  	flash[:danger] = "Something went wrong"
	  	redirect_to events_path
	  end
  end

  def edit
  end

  def show
  end

  def index
  	@events = Event.all
  end

  def update
    if @event.update_attributes(event_params)
      if params[:event_attachments] && params[:event_attachments]['picture'].count <= 5
        params[:event_attachments]['picture'].each do |a|
          @event_attachment = @event.event_attachments.create(:picture => a)
        end
      end
      flash[:success] = "Successfully updated the event."
      redirect_to @event
    else
      flash[:danger] = "Something went wrong"
      redirect_to events_path
    end
  end

  def destroy
  end

  private

  def event_params
  	params.require(:event).permit(:name, :description)
  end

  def set_event
    @event = Event.find(params[:id])
  end

end
