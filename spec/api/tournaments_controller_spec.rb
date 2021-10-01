require 'rails_helper'

describe "Get all Tournament", type: :request do
  before {get '/api/tournaments'}
  it "RReturns api response" do
    expect((response.body)).not_to be_empty
  end
end

describe "Get specific Tournament", type: :request do
  before {get '/api/tournaments/d70anxa6'}
  it "Returns api response" do
    expect((response.body)).not_to be_empty
  end
end

describe "Create specific Tournament", type: :request do
  before {post '/api/tournaments', 
    params: {
      "data": {
          "type": "Tournaments",
          "attributes": {
              "name": "Rainbow Six: Siege Tournament test sample 12345",
              "url": "r6siege_tournament_xx_232123221232123",
              "tournament_type": "single elimination",
              "private": true,
              "starts_at": "2021-12-21",
              "description": "2021-12-29",
              "notifications": {
                  "upon_matches_open": true,
                  "upon_tournament_ends": true
              },
              "match_options": {
                  "third_place_match": true,
                  "accept_attachments": false
              },
              "registration_options": {
                  "open_signup": false,
                  "signup_cap": 5,
                  "check_in_duration": 30
              },
              "seeding_options": {
                  "hide_seeds": false,
                  "sequential_pairings": false
              },
              "double_elimination_options": {
                  "split_participants": false,
                  "grand_finals_modifier": ""
              },
              "round_robin_options": {
                  "iterations": 2,
                  "ranking": "",
                  "pts_for_game_win": 1,
                  "pts_for_game_tie": 0,
                  "pts_for_match_win": 1,
                  "pts_for_match_tie": 0.5
              },
              "swiss_options": {
                  "rounds": 2,
                  "pts_for_game_win": 1,
                  "pts_for_game_tie": 0,
                  "pts_for_match_win": 1,
                  "pts_for_match_tie": 0.5
              },
              "free_for_all_options": {
                  "max_participants": 4
              }
          }
      }
    }
  }
  it "Returns api response" do
    expect((response.body)).not_to be_empty
  end
end

describe "Delete specific Tournament", type: :request do
  before {delete '/api/tournaments/d70anxa6'}
  it "Returns api response" do
    expect((response.body)).not_to be_empty
  end
end