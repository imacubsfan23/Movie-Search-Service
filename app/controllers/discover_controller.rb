class DiscoverController < ApplicationController
  def index
    @popular_shows = Discover.new.tv["results"]
  end
end
