require 'rails_helper'

RSpec.describe "admin/assets/index", type: :view do
  before(:each) do
    assign(:admin_assets, [
      Admin::Asset.create!(
        :path => "Path",
        :name => "Name"
      ),
      Admin::Asset.create!(
        :path => "Path",
        :name => "Name"
      )
    ])
  end

  it "renders a list of admin/assets" do
    render
    assert_select "tr>td", :text => "Path".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
