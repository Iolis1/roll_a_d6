Rails.application.routes.draw do
  # Define the routes for the controllers
  get 'codex', to: 'codex#index', as: :codex_index
  get 'characters/show'
  get 'characters/new', as: :new_character
  get 'characters/edit'
  get 'traits/:index', to: 'traits#show', as: :trait
  get 'subraces/:index', to: 'subraces#show', as: :subrace
  get 'subclasses/:index', to: 'subclasses#show', as: :subclass
  get 'spells/:index', to: 'spells#show', as: :spell
  get 'rules/:index', to: 'rules#show', as: :rule
  get 'races/:index', to: 'races#show', as: :race
  get 'monsters/:index', to: 'monsters#show', as: :monster
  get 'features/:index', to: 'features#show', as: :feature
  get 'feats/:index', to: 'feats#show', as: :feat
  get 'equipment/:index', to: 'equipment#show', as: :equipment
  get 'classes/:index', to: 'classes#show', as: :class
  get 'dice/roll', to: 'dice#roll', as: :dice_roll
  get 'pages/home'
  devise_for :users
  get 'items/show'

  # Define the routes for the game_mechanics controller
  get 'game_mechanics/magic-schools/:index', to: 'game_mechanics#magic_school', as: :game_mechanic_magic_school
  get 'game_mechanics/damage-types/:index', to: 'game_mechanics#damage_type', as: :game_mechanic_damage_type
  get 'game_mechanics/conditions/:index', to: 'game_mechanics#condition', as: :game_mechanic_condition

  # Define the routes for the character data controller
  get 'character_data/:data_type/:index', to: 'character_data#show', as: :character_data_show


  # Define the routes for the sessions controller
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
