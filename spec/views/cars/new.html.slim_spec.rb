require 'rails_helper'

RSpec.describe "cars/new", :type => :view do
  before(:each) do
    assign(:car, Car.new(
      :model => "MyString",
      :year => 1,
      :kilometers => 1,
      :color => "MyString"
    ))
  end

  it "renders new car form" do
    render

    assert_select "form[action=?][method=?]", cars_path, "post" do

      assert_select "input#car_model[name=?]", "car[model]"

      assert_select "input#car_year[name=?]", "car[year]"

      assert_select "input#car_kilometers[name=?]", "car[kilometers]"

      assert_select "input#car_color[name=?]", "car[color]"
    end
  end
end
