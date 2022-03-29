require "rails_helper"

RSpec.describe "Movies", type: :request do
  describe "GET /movies" do
    it "should return all movies on record" do
      get "/movies"
      expect(response).to have_http_status(200)
    end
  end
end
