require "rails_helper"

RSpec.describe UserShowsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_shows").to route_to("user_shows#index")
    end

    it "routes to #new" do
      expect(:get => "/user_shows/new").to route_to("user_shows#new")
    end

    it "routes to #show" do
      expect(:get => "/user_shows/1").to route_to("user_shows#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_shows/1/edit").to route_to("user_shows#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_shows").to route_to("user_shows#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_shows/1").to route_to("user_shows#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_shows/1").to route_to("user_shows#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_shows/1").to route_to("user_shows#destroy", :id => "1")
    end

  end
end
