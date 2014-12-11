require 'rails_helper'

RSpec.describe "DrivingStyles", :type => :request do
  describe "GET /driving_styles" do
    it "works! (now write some real specs)" do
      get driving_styles_path
      expect(response.status).to be(200)
    end
  end
end
