Rails.application.routes.draw do
  root "cycles#new"
  resources :cycles

end
