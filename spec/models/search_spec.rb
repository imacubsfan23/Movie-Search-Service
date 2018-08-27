require 'rails_helper'

describe Search do
  search = Search.new

  context 'model' do
    it 'responds' do
      assert search
    end
    
    context 'tv mode' do
      shows = search.tv["results"]
      first_show = shows[0]
      name = first_show["name"]
  
      it 'successfully returns shows' do
        assert shows
      end
      
      it 'successfully returns details of a show' do
        assert name
      end
      
      it 'returns "The Show" if query is invalid' do
        assert name.include?("The") && name.include?("Show")
      end
    end
    
    context 'movie mode' do
      movies = search.movie["results"]
      first_movie = movies[0]
      title = first_movie["title"]
      
      it 'returns shows if query is valid' do
        assert movies
      end
      
      it 'successfully returns details of a show' do 
        assert title
      end
      
      it 'returns "The Movie" if query is invalid' do
        assert title.include?("The") && title.include?("Movie")
      end
    end
  end
end
