# C new create
# R index show
# U edit update
# D delete

Rails.application.routes.draw do
  root :to => 'buds#index'
  get '/buds' => 'buds#index' #All the buds on display

  get '/buds/new' => 'buds#new' #Form
  get '/buds' => 'buds#create' #To add to database
end
