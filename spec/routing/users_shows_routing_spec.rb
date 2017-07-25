require "rails_helper"

RSpec.describe UsersShowsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/users_shows").to route_to("users_shows#index")
    end

    it "routes to #new" do
      expect(:get => "/users_shows/new").to route_to("users_shows#new")
    end

    it "routes to #show" do
      expect(:get => "/users_shows/1").to route_to("users_shows#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/users_shows/1/edit").to route_to("users_shows#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/users_shows").to route_to("users_shows#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/users_shows/1").to route_to("users_shows#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/users_shows/1").to route_to("users_shows#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/users_shows/1").to route_to("users_shows#destroy", :id => "1")
    end

  end
end
