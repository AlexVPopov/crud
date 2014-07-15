require 'rails_helper'

RSpec.describe "cars/show", :type => :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :model => "Model",
      :year => 1,
      :kilometers => 2,
      :color => "Color"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Color/)
  end
end
