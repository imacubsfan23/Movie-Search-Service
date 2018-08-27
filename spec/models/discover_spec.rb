require 'rails_helper'

RSpec.describe Discover do
  first_tv_page = Discover.new.tv
  second_tv_page = Discover.new(2).tv
  first_movie_page = Discover.new.movie
  second_movie_page = Discover.new(2).movie
  
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
