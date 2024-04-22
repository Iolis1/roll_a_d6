Rails.application.routes.draw do

  # Define the routes for the static pages
  get 'about', to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'

  # Use resourceful routes for characters
  resources :characters, only: [:show, :new, :edit, :create, :update, :destroy]

  # Define the routes for the controllers
  get 'codex', to: 'codex#index', as: :codex_index
  get 'traits', to: 'traits#show', as: :trait
  get 'api/traits/:index', to: 'traits#traits'

  get 'subraces', to: 'subraces#show', as: :subrace
  get 'api/subraces/:index', to: 'subraces#subraces'

  get 'subclasses', to: 'subclasses#show', as: :subclass
  get 'api/subclasses/:index', to: 'subclasses#subclasses'

  get 'spells', to: 'spells#show', as: :spell
  get 'api/spells/:index', to: 'spells#spells'

  get 'rules', to: 'rules#show', as: :rule
  get 'api/rules/:index', to: 'rules#rules'

  get 'races', to: 'races#show', as: :race
  get 'api/races/:index', to: 'races#races'

  get 'monsters', to: 'monsters#show', as: :monster
  get 'api/monsters/:index', to: 'monsters#monsters'

  get 'features', to: 'features#show', as: :feature
  get 'api/features/:index', to: 'features#features'

  get 'feats', to: 'feats#show', as: :feat
  get 'api/feats/:index', to: 'feats#feats'

  get 'equipment', to: 'equipment#show', as: :equipment
  get 'api/equipment/:index', to: 'equipment#equipment'

  get 'classes', to: 'classes#show', as: :class
  get 'api/classes/:index', to: 'classes#classes'
  
  get 'dice/roll', to: 'dice#roll', as: :dice_roll
  get 'pages/home'
  devise_for :users
  get 'items/show'

  # Define the routes for the game_mechanics controller
  get 'game_mechanics', to: 'game_mechanics#index', as: :game_mechanics
  get 'api/magic_schools/:index', to: 'game_mechanics#magic_schools'
  get 'api/damage_types/:index', to: 'game_mechanics#damage_types'
  get 'api/conditions/:index', to: 'game_mechanics#conditions'

  # Define the routes for the character data controller
  get 'character_data', to: 'character_data#index', as: :character_data

  # API-like routes for AJAX requests to fetch data for each subcategory
  get 'api/ability_scores/:index', to: 'character_data#ability_scores'
  get 'api/skills/:index', to: 'character_data#skills'
  get 'api/proficiencies/:index', to: 'character_data#proficiencies'
  get 'api/languages/:index', to: 'character_data#languages'
  get 'api/alignments/:index', to: 'character_data#alignments'
  get 'api/backgrounds/:index', to: 'character_data#backgrounds'
  

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
