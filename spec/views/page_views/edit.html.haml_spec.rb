require 'rails_helper'

RSpec.describe "page_views/edit", :type => :view do
  before(:each) do
    @page_view = assign(:page_view, PageView.create!(
      :ip => "MyString",
      :user_agent => "MyString",
      :path => "MyString"
    ))
  end

  it "renders the edit page_view form" do
    render

    assert_select "form[action=?][method=?]", page_view_path(@page_view), "post" do

      assert_select "input#page_view_ip[name=?]", "page_view[ip]"

      assert_select "input#page_view_user_agent[name=?]", "page_view[user_agent]"

      assert_select "input#page_view_path[name=?]", "page_view[path]"
    end
  end
end
