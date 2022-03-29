require "rails_helper"

RSpec.describe "Sales", type: :request do
  describe "GET /sales" do
    it "should return all sales on record" do
      get "/sales"
      expect(response).to have_http_status(200)
    end
  end
end
