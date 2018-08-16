Rails.application.routes.draw do
  resources :location_people
  resources :photo_people
  resources :repor_people
  resources :people
  resources :person_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
