Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "chatrooms#index"

  # Defines the route for the chatrooms controller
  resources :chatrooms, only: [:show, :index, :create, :destroy, :update] do
    # Defines the route for the messages controller
    resources :messages, only: [:create]
  end

  # Defines the route for the chatroom_users controller
  resources :chatroom_users, only: [:create, :delete, :update]
end
