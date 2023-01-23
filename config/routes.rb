Rails.application.routes.draw do
  resources :weapons
  resources :units
  resources :unit_weapons
  resources :unit_weapon_traits
  resources :unit_traits
  resources :unit_roles
  resources :unit_movement_modes
  resources :unit_model_types
  resources :unit_factions
  resources :unit_chassis
  resources :unit_attributes
  resources :traits
  resources :trait_types
  resources :sublists
  resources :roles
  resources :options
  resources :option_weapon_upgrades
  resources :option_weapon_requirements
  resources :option_unit_upgrades
  resources :option_types
  resources :option_trait_upgrades
  resources :option_trait_requirements
  resources :option_sublist_requirements
  resources :option_role_requirements
  resources :option_option_requirements
  resources :option_faction_requirements
  resources :option_chassis_requirements
  resources :option_attribute_upgrades
  resources :movement_modes
  resources :model_types
  resources :factions
  resources :chassis
  resources :attribute_types
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
