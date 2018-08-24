class ShowsController < ApplicationController
  def index
    @discover = API::Discover.new
    @popular_shows = @discover.tv["results"]
  end
  
  def search
    @search = API::Search.new
    @shows = search.tv["results"]
  end

  def show(index)
    @search = API::Search.new
    @show = @search.tv["results"][index]
  end
end
