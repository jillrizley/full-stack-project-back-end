require 'rails_helper'

RSpec.describe "UsersShows", type: :request do
  describe "GET /users_shows" do
    it "works! (now write some real specs)" do
      get users_shows_path
      expect(response).to have_http_status(200)
    end
  end
end
