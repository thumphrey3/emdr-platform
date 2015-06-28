Rails.application.routes.draw do

  root "patients#new"
  resources :cycles
  resources :patients
  resources :sessions
  resources :blsexposures
  resources :targets
end
