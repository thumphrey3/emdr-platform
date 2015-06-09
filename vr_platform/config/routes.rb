Rails.application.routes.draw do
  root "cycles#index"
  resources :cycles

end
