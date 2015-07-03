Rails.application.routes.draw do

  root "cycles#new"
  resources :cycles
  resources :patients
  resources :sessions
  resources :blsexposures
  resources :targets
  resources :determinants
  
end
