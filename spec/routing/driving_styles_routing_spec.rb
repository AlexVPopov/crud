require "rails_helper"

RSpec.describe DrivingStylesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/driving_styles").to route_to("driving_styles#index")
    end

    it "routes to #new" do
      expect(:get => "/driving_styles/new").to route_to("driving_styles#new")
    end

    it "routes to #show" do
      expect(:get => "/driving_styles/1").to route_to("driving_styles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/driving_styles/1/edit").to route_to("driving_styles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/driving_styles").to route_to("driving_styles#create")
    end

    it "routes to #update" do
      expect(:put => "/driving_styles/1").to route_to("driving_styles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/driving_styles/1").to route_to("driving_styles#destroy", :id => "1")
    end

  end
end
