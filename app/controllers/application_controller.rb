class ApplicationController < ActionController::Base
  
  private

    def client_instance
      ChallongeUserRails::Client.new(api_key: Rails.application.credentials.challonge[:api_token])
    end
end
