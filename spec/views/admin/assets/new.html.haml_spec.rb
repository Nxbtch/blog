require 'rails_helper'

RSpec.describe "admin/assets/new", type: :view do
  before(:each) do
    assign(:admin_asset, Admin::Asset.new(
      :path => "MyString",
      :name => "MyString"
    ))
  end

  it "renders new admin_asset form" do
    render

    assert_select "form[action=?][method=?]", admin_assets_path, "post" do

      assert_select "input#admin_asset_path[name=?]", "admin_asset[path]"

      assert_select "input#admin_asset_name[name=?]", "admin_asset[name]"
    end
  end
end
