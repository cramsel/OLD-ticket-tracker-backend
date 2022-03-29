require "rails_helper"

RSpec.describe "Reports", type: :request do
  describe "GET /reports" do
    it "should return all reports on record" do
      get "/reports"
      expect(response).to have_http_status(200)
    end
  end
end
