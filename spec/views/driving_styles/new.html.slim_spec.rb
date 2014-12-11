require 'rails_helper'

RSpec.describe "driving_styles/new", :type => :view do
  before(:each) do
    assign(:driving_style, DrivingStyle.new(
      :type => ""
    ))
  end

  it "renders new driving_style form" do
    render

    assert_select "form[action=?][method=?]", driving_styles_path, "post" do

      assert_select "input#driving_style_type[name=?]", "driving_style[type]"
    end
  end
end
