require 'rails_helper'

RSpec.describe "ShowsUsers", type: :request do
  describe "GET /shows_users" do
    it "works! (now write some real specs)" do
      get shows_users_index_path
      expect(response).to have_http_status(200)
    end
  end
end
