class ShowsController < ApplicationController
  def index
    @discover = API::Discover.new
    @popular_shows = @discover.tv["results"]
  end

  def show
    @search = API::Search.new.tv(query)["results"]
    @show = @search.tv["results"]
  end
end
