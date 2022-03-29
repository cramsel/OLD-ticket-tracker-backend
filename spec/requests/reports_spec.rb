require "rails_helper"

RSpec.describe "Reports", type: :request do
  describe "GET /reports" do
    it "should return all reports on record" do
      get "/reports"
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /reports" do
    it "should allow for a report to be made" do
      post "/reports", :params => { name: "Test Name" }
      expect(response).to have_http_status(200)
    end
  end
end
