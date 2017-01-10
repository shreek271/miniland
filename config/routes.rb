Rails.application.routes.draw do
  
  devise_for :teachers
  root to: "static_pages#home"

end
