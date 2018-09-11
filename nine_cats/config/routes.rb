Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cats
  # resources :cats, only: [:index, :show, :create, :edit, :new]
  resources :cat_rental_requests
end
