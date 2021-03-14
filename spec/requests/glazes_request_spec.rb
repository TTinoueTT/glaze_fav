require 'rails_helper'

RSpec.describe "Glazes", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/glazes/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/glazes/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/glazes/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/glazes/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
