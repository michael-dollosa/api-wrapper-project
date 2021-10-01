module Api
  class TournamentsController < ApplicationController
    skip_forgery_protection

    @data = {
      "data": {
          "type": "Tournaments",
          "attributes": {
              "name": "Rainbow Six: Siege Tournament Sample Tournament",
              "url": "r6siege_tournament_xx_23123222123123123",
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
    def tournaments
      tournaments = client_instance.tournaments
      render json: tournaments
    end

    def tournament
      tournament = client_instance.tournament(params[:tournament_url])
      render json: tournament
    end

    def create_tournament
      tournament = client_instance.create_tournament(JSON.parse(request.body.read))
      
      render json: tournament
    end

    def delete_tournament
      tournament = client_instance.delete_tournament(params[:tournament_url])
      
      render json: tournament
    end

    private

    def client_instance
      ChallongeUserRails::Client.new(api_key: "Bu1jqfn2whgYiS2uOeD4iiTf25P2amiyuxLhHMKZ")
    end
  end
end