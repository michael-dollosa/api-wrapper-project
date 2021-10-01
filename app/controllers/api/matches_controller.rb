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

    private

    def client_instance
      ChallongeUserRails::Client.new(api_key: "Bu1jqfn2whgYiS2uOeD4iiTf25P2amiyuxLhHMKZ")
    end
  end
end