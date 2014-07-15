require 'rails_helper'

RSpec.describe "cars/index", :type => :view do
  before(:each) do
    assign(:cars, [
      Car.create!(
        :model => "Model",
        :year => 1,
        :kilometers => 2,
        :color => "Color"
      ),
      Car.create!(
        :model => "Model",
        :year => 1,
        :kilometers => 2,
        :color => "Color"
      )
    ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
  end
end
