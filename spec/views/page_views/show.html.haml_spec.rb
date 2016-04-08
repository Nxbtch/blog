require 'rails_helper'

RSpec.describe "page_views/show", :type => :view do
  before(:each) do
    @page_view = assign(:page_view, PageView.create!(
      :ip => "Ip",
      :user_agent => "User Agent",
      :path => "Path"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ip/)
    expect(rendered).to match(/User Agent/)
    expect(rendered).to match(/Path/)
  end
end
