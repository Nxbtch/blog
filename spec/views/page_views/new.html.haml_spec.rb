require 'rails_helper'

RSpec.describe "page_views/new", :type => :view do
  before(:each) do
    assign(:page_view, PageView.new(
      :ip => "MyString",
      :user_agent => "MyString",
      :path => "MyString"
    ))
  end

  it "renders new page_view form" do
    render

    assert_select "form[action=?][method=?]", page_views_path, "post" do

      assert_select "input#page_view_ip[name=?]", "page_view[ip]"

      assert_select "input#page_view_user_agent[name=?]", "page_view[user_agent]"

      assert_select "input#page_view_path[name=?]", "page_view[path]"
    end
  end
end
