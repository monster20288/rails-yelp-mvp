Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "restaurants#index"
  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new", as: :new
  # get "restaurants/:id", to: "restaurants#show",  as: :restaurant_show
  # post "restaurants", to: "restaurants#create"

  # get "/restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: :review_new
  # post "/restaurants/:restaurant_id/reviews", to: "reviews#create", as: :review

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
