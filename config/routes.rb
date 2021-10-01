Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    get '/tournaments' => 'tournaments#tournaments'
    post '/tournaments' => 'tournaments#create_tournament'
    delete '/tournaments/:tournament_url' => 'tournaments#delete_tournament'
    get '/tournament/:tournament_url' => 'tournaments#tournament'
    get '/tournament/:tournament_url/matches' => 'matches#matches'
    get '/tournament/:tournament_url/matches/:match_id' => 'matches#match'
  end
end
