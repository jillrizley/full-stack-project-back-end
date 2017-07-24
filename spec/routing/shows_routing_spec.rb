require "rails_helper"

RSpec.describe 'routes for shows' do
  it 'routes GET /shows to the shows#index action' do
    # check that a get request to /articles routes to the index method of the
    # articles controller

    expect(get('/shows')).to route_to('shows#index')
  end


# RSpec.describe ShowsController, type: :routing do
#   describe "routing" do
#
#     it "routes to #index" do
#       expect(:get => "/shows").to route_to("shows#index")
#     end


  it 'routes GET /shows/:id to the shows#show action' do
  expet(get('/show/1')).to route_to(
    controller: 'shows',
    action: 'show',
    id: 1
  )
  end

    # it "routes to #show" do
    #   expect(:get => "/shows/1").to route_to("shows#show", :id => "1")
    # end
    #
    # it "routes to #edit" do
    #   expect(:get => "/shows/1/edit").to route_to("shows#edit", :id => "1")
    # end
    #
    # it "routes to #create" do
    #   expect(:post => "/shows").to route_to("shows#create")
    # end
    #
    # it "routes to #update via PUT" do
    #   expect(:put => "/shows/1").to route_to("shows#update", :id => "1")
    # end
    #
    # it "routes to #update via PATCH" do
    #   expect(:patch => "/shows/1").to route_to("shows#update", :id => "1")
    # end
    #
    # it "routes to #destroy" do
    #   expect(:delete => "/shows/1").to route_to("shows#destroy", :id => "1")
    # end

  end
