require 'rails_helper'

RSpec.describe "cars/edit", :type => :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :model => "MyString",
      :year => 1,
      :kilometers => 1,
      :color => "MyString"
    ))
  end

  it "renders the edit car form" do
    render

    assert_select "form[action=?][method=?]", car_path(@car), "post" do

      assert_select "input#car_model[name=?]", "car[model]"

      assert_select "input#car_year[name=?]", "car[year]"

      assert_select "input#car_kilometers[name=?]", "car[kilometers]"

      assert_select "input#car_color[name=?]", "car[color]"
    end
  end
end
