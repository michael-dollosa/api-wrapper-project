require 'rails_helper'

describe "Get all Matches", type: :request do
  before {get '/api/tournaments/d70anxa6/matches'}
  it "Returns api response" do
    expect((response.body)).not_to be_empty
  end
end

describe "Get specific Match", type: :request do
  before {get '/api/tournaments/d70anxa6/matches/12321'}
  it "Returns api response" do
    expect((response.body)).not_to be_empty
  end
end