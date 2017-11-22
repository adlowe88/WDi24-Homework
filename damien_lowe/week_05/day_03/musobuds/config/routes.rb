Rails.application.routes.draw do
  root :to => 'buds#index'

  resources :artists
  resources :buds
end
