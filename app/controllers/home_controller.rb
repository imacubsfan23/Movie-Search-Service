class HomeController < ApplicationController
  def index
    @shows = API::Discover.new
    @popular_shows = @shows.tv["results"]
  end
end
