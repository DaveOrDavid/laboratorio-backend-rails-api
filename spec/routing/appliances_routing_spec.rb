require "rails_helper"

RSpec.describe AppliancesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/appliances").to route_to("appliances#index")
    end


    it "routes to #show" do
      expect(:get => "/appliances/1").to route_to("appliances#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/appliances").to route_to("appliances#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/appliances/1").to route_to("appliances#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/appliances/1").to route_to("appliances#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/appliances/1").to route_to("appliances#destroy", :id => "1")
    end

  end
end
