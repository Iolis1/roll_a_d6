Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users
  get 'items/show'
  get 'characters/show'
  get 'characters/new'
  get 'characters/edit'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")
  root "pages#home", as: "home"
end
