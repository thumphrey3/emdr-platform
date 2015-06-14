Rails.application.routes.draw do
  root "cycles#new"
  resources :cycles
  resources :patients

end
