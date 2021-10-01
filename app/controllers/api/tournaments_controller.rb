module Api
  class TournamentsController < ApplicationController
    skip_forgery_protection

    def index
      tournaments = client_instance.tournaments
      render json: tournaments
    end

    def show
      tournament = client_instance.tournament(params[:tournament_url])
      render json: tournament
    end

    def create
      tournament = client_instance.create_tournament(JSON.parse(request.body.read))
      render json: tournament
    end

    def delete
      tournament = client_instance.delete_tournament(params[:tournament_url])
      render json: tournament
    end
  end
end