Rails.application.routes.draw do

  root :to => 'pages#home'

  get "/eightball" => 'eightball#game'

  get "/secretnumber" => 'secretnumber#game2'

  get "/rps" => 'rps#game3'

end
