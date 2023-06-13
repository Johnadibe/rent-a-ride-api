Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show, :index]
      post "/login", to: "users#login"
      get "/me", to: "users#me"
      resources :reservation, only: [:create, :show, :index, :new]
    end
  end
end
