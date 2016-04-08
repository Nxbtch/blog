require 'rails_helper'

RSpec.describe "page_views/index", :type => :view do
  before(:each) do
    assign(:page_views, [
      PageView.create!(
        :ip => "Ip",
        :user_agent => "User Agent",
        :path => "Path"
      ),
      PageView.create!(
        :ip => "Ip",
        :user_agent => "User Agent",
        :path => "Path"
      )
    ])
  end

  it "renders a list of page_views" do
    render
    assert_select "tr>td", :text => "Ip".to_s, :count => 2
    assert_select "tr>td", :text => "User Agent".to_s, :count => 2
    assert_select "tr>td", :text => "Path".to_s, :count => 2
  end
end
