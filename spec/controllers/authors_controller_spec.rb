require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      post :create, { author: { first_name: "Ernest", last_name: "Hemingway" } }
      expect(response).to have_http_status(:success)
    end
  end

end
