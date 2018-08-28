require 'rails_helper'

RSpec.describe Discover do
  discover = Discover.new
  first_tv_page = discover.make_request
  second_tv_page = discover.make_request("tv", 2)
  first_movie_page = discover.make_request("movie")
  second_movie_page = discover.make_request("movie", 2)
  
  context "model" do
    
    context "tv query" do
      it "returns default discover page" do
        assert first_tv_page
      end
      
      it "returns second discover page" do
        assert second_tv_page
      end
    end
    
    context "movie query" do
      it "returns default discover page" do 
        assert first_movie_page
      end
      
      it "returns second discover page" do
        assert second_movie_page
      end
    end
    
  end
  
end
