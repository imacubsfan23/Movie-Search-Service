class ShowsController < ApplicationController
  def index
    @discover = API::Discover.new
    @popular_shows = @discover.tv["results"]
  end

  def show
    @search = API::Search.new
    @id = @search.find(params[:id])
    @show = @search.(@id)["results"]
  end
end
