require 'rails_helper'

RSpec.describe "PeriodicAtoms", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/periodic_atoms/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/periodic_atoms/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/periodic_atoms/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/periodic_atoms/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
