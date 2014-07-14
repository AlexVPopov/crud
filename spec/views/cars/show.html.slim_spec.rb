require 'rails_helper'

RSpec.describe "cars/show", :type => :view do
  before(:each) do
    @car = assign(:car, Car.create!(
      :brand => "Brand",
      :model => "Model",
      :year => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/1/)
  end
end
