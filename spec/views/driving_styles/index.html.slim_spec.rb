require 'rails_helper'

RSpec.describe "driving_styles/index", :type => :view do
  before(:each) do
    assign(:driving_styles, [
      DrivingStyle.create!(
        :type => "Type"
      ),
      DrivingStyle.create!(
        :type => "Type"
      )
    ])
  end

  it "renders a list of driving_styles" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
