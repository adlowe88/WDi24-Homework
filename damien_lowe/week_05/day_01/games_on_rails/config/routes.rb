Rails.application.routes.draw do

  root :to => 'pages#home'

  get "/eightball" => 'eightball#game'

  get "/secretnumber" => 'secretnumber#game2'
  get "/secretnumber/result" => "secretnumber#result"

  get "/rps" => 'rps#game3'
  get "/rps/:throw" => 'rps#rps_play'

end
