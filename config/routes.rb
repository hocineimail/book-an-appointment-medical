Rails.application.routes.draw do
  root 'homes#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :datebookings do
   resources :timetebookings
  end

 
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
