require 'rails_helper'

describe Search do

  context 'model' do
    it 'responds' do
      assert Search.new
    end
    
    context 'tv mode' do
      search = Search.new.make_request
      shows = search["results"]
      first_show = shows[0]
      name = first_show["name"]
      
      it 'can be instantiated' do
        assert search
      end
  
      it 'successfully returns shows' do
        assert shows
      end
      
      it 'successfully returns details of a show' do
        assert name
      end
      
      it 'returns "The" if query is invalid' do
        assert name.include?("The")
      end
    end
    
    context 'movie mode' do
      search = Search.new.make_request("The", "movie")
      movies = search["results"]
      first_movie = movies[0]
      title = first_movie["title"]
      
      it 'returns movies if query is valid' do
        assert movies
      end
      
      it 'successfully returns details of a movie' do 
        assert title
      end
      
      it 'returns "The" if query is invalid' do
        assert title.include?("The")
      end
    end
  end
end
