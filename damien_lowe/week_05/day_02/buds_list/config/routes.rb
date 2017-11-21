# C new create
# R index show
# U edit update
# D delete

Rails.application.routes.draw do
  root :to => 'buds#index'
  get '/buds' => 'buds#index' #All the buds on display

  get '/buds/new' => 'buds#new' #Form
  post '/buds' => 'buds#create' #To add to database

  get '/buds/:id' => 'buds#show', :as => 'bud' #Display one goodie

end
