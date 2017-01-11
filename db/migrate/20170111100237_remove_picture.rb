class RemovePicture < ActiveRecord::Migration[5.0]
  def change
  	remove_column :event_attachments, :picture
  	remove_column :events, :attachment
  end
end
