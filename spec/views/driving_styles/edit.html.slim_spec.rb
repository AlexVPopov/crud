require 'rails_helper'

RSpec.describe "driving_styles/edit", :type => :view do
  before(:each) do
    @driving_style = assign(:driving_style, DrivingStyle.create!(
      :type => ""
    ))
  end

  it "renders the edit driving_style form" do
    render

    assert_select "form[action=?][method=?]", driving_style_path(@driving_style), "post" do

      assert_select "input#driving_style_type[name=?]", "driving_style[type]"
    end
  end
end
