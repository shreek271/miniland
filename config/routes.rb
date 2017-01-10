Rails.application.routes.draw do
  
  devise_for :teachers, controllers: { registrations: 'registrations'}
  root to: "static_pages#home"
  get 'dashboard'=>'dashboard#show'

  resources :teachers
end
