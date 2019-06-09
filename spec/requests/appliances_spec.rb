require 'rails_helper'

RSpec.describe "Appliances", type: :request do
  describe "GET /appliances" do
    it "works! (now write some real specs)" do
      get appliances_path
      expect(response).to have_http_status(200)
    end
  end
end
