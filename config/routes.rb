Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :records
  resources :categories, only: [:index, :show, :create]
end
