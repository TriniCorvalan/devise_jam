Rails.application.routes.draw do
  get 'admin/show'

  get 'home/index'
  get 'home/show'

  devise_for :users, controllers: {
    sessions: 'users/sessions', 
    registration: 'users/registrations'
    }
  
  resources :stories
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
