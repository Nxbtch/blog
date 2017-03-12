require 'rails_helper'

RSpec.describe "admin/assets/show", type: :view do
  before(:each) do
    @admin_asset = assign(:admin_asset, Admin::Asset.create!(
      :path => "Path",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Path/)
    expect(rendered).to match(/Name/)
  end
end
