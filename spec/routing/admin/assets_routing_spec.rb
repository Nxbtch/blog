require "rails_helper"

RSpec.describe Admin::AssetsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/assets").to route_to("admin/assets#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/assets/new").to route_to("admin/assets#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/assets/1").to route_to("admin/assets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/assets/1/edit").to route_to("admin/assets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/assets").to route_to("admin/assets#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/assets/1").to route_to("admin/assets#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/assets/1").to route_to("admin/assets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/assets/1").to route_to("admin/assets#destroy", :id => "1")
    end

  end
end
