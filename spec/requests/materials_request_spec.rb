require 'rails_helper'

RSpec.describe "Materials", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/materials/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/materials/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/materials/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/materials/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
