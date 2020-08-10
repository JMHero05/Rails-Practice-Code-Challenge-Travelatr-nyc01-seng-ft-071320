Rails.application.routes.draw do
  resources :bloggers, only: [:show, :new, :create]
  resources :destinations, only: [:show, :new, :create]
  resources :posts, only: [:show, :new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
