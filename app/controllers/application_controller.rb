class ApplicationController < ActionController::Base
  
  private

    def client_instance
      ChallongeUserRails::Client.new(api_key: "Bu1jqfn2whgYiS2uOeD4iiTf25P2amiyuxLhHMKZ")
    end
end
