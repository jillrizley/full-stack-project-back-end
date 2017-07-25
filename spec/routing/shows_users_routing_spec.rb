require "rails_helper"

RSpec.describe ShowsUsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/shows_users").to route_to("shows_users#index")
    end

    it "routes to #new" do
      expect(:get => "/shows_users/new").to route_to("shows_users#new")
    end

    it "routes to #show" do
      expect(:get => "/shows_users/1").to route_to("shows_users#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/shows_users/1/edit").to route_to("shows_users#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/shows_users").to route_to("shows_users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/shows_users/1").to route_to("shows_users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/shows_users/1").to route_to("shows_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/shows_users/1").to route_to("shows_users#destroy", :id => "1")
    end

  end
end
