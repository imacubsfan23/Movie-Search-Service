require 'rails_helper'

RSpec.describe ShowsController, type: :controller do
    describe "GET #show" do
        it "responds" do
            get :show, params: {:id => 1}
            expect(response).to have_http_status(:success)
        end
    end
end