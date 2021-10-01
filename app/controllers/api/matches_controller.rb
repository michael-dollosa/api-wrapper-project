module Api
  class MatchesController < ApplicationController

    def matches
      matches = client_instance.matches(params[:tournament_url])
      render json: matches
    end

    def match
      match = client_instance.match(params[:tournament_url], params[:match_id])
      render json: match
    end
  end
end