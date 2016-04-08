require "rails_helper"

RSpec.describe PageViewsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/page_views").to route_to("page_views#index")
    end

    it "routes to #new" do
      expect(:get => "/page_views/new").to route_to("page_views#new")
    end

    it "routes to #show" do
      expect(:get => "/page_views/1").to route_to("page_views#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/page_views/1/edit").to route_to("page_views#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/page_views").to route_to("page_views#create")
    end

    it "routes to #update" do
      expect(:put => "/page_views/1").to route_to("page_views#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/page_views/1").to route_to("page_views#destroy", :id => "1")
    end

  end
end
