require 'rails_helper'

RSpec.describe MoviesController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      get :show, params: {"id" => 2}#no movie with id of 1
      expect(response).to have_http_status(:success)
    end
  end

end
