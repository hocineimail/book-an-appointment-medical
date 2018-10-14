Rails.application.routes.draw do
  get 'homes/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :datebookings do
   resources :timetebookings
  end

  root "datebookings#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
