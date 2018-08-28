require 'rails_helper'

RSpec.describe Api, type: :model do
  context 'model' do
    api = Api.new
    
    context 'api key' do
      it "exists" do
        assert api.api_key
      end
      
      it "is the correct key" do
        assert_equal api.api_key, ENV["API_KEY"]
      end
    end
    
    context 'mode' do
      it "can be accessed" do
        assert api.mode
      end
      
      it "is initialized as 'tv'" do
        assert_equal api.mode, "tv"
      end
    end
  end
end
