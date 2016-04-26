require 'rails_helper'

RSpec.describe "Workoutposts", type: :request do
  describe "GET /workoutposts" do
    it "works! (now write some real specs)" do
      get workoutposts_path
      expect(response).to have_http_status(200)
    end
  end
end
