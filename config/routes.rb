Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    get '/tournaments' => 'tournaments#index'
    post '/tournaments' => 'tournaments#create'
    delete '/tournaments/:tournament_url' => 'tournaments#delete'
    get '/tournament/:tournament_url' => 'tournaments#show'
    get '/tournament/:tournament_url/matches' => 'matches#index'
    get '/tournament/:tournament_url/matches/:match_id' => 'matches#show'
  end
end
