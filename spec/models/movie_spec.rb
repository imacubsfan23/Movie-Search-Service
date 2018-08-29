require 'rails_helper'

RSpec.describe Movie do
  movie = Movie.new
  first_movie = movie.make_request(2)#no movie with id of 1
  
  context "model" do
    it "responds" do
      assert first_movie
    end
    
    it "has accessible attributes when movie exists" do
      assert first_movie["title"]
    end
    
    it "queries the correct ActiveResource model when movie exists" do
      assert_equal first_movie["title"].downcase, "ariel"
    end
    
    context "has nil id when" do
      it "movie doesn't exist" do
        assert_nil movie.make_request(-1)["id"]
      end
      
      it "no id given" do
        assert_nil movie.make_request["id"]
      end
    end
  end
end