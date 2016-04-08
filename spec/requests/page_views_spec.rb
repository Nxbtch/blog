require 'rails_helper'

RSpec.describe "PageViews", :type => :request do
  describe "GET /page_views" do
    it "works! (now write some real specs)" do
      get page_views_path
      expect(response).to have_http_status(200)
    end
  end
end
