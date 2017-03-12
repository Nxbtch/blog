require 'rails_helper'

RSpec.describe "admin/assets/edit", type: :view do
  before(:each) do
    @admin_asset = assign(:admin_asset, Admin::Asset.create!(
      :path => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit admin_asset form" do
    render

    assert_select "form[action=?][method=?]", admin_asset_path(@admin_asset), "post" do

      assert_select "input#admin_asset_path[name=?]", "admin_asset[path]"

      assert_select "input#admin_asset_name[name=?]", "admin_asset[name]"
    end
  end
end
