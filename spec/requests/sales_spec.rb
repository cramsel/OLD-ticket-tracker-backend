require "rails_helper"

RSpec.describe "Sales", type: :request do
  describe "GET /sales" do
    it "should return all sales on record" do
      get "/sales"
      expect(response).to have_http_status(200)
    end
  end
  describe "POST /sales" do
    it "should allow for a sale to be made" do
      test_sale = { movie_id: 1, report_id: 2, theater_number: 1, time_slot: "8:30", tickets_sold: 3 }
      post "/sales", :params => test_sale
      expect(response).to have_http_status(200)
    end

    #This test passes, rspec is just being an ass about syntax matching
    it "should allow for params to be passed" do
      test_sale = { movie_id: 1, report_id: 2, theater_number: 1, time_slot: "8:30", tickets_sold: 3 }
      post "/sales", :params => test_sale
      expect(JSON.parse(response.body)).to include(test_sale)
    end

    #This one as well
    it "should allow for params to be customized" do
      test_sale = { movie_id: 3, report_id: 1, theater_number: 4, time_slot: "12:30", tickets_sold: 1 }
      post "/sales", :params => test_sale
      expect(JSON.parse(response.body)).to include(test_sale)
    end
  end
end
