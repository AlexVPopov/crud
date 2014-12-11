require 'rails_helper'

RSpec.describe "driving_styles/show", :type => :view do
  before(:each) do
    @driving_style = assign(:driving_style, DrivingStyle.create!(
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
  end
end
