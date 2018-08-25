class ApiController < ApplicationController
  def index
    params[:query] ||= "The Show"
    @queried_shows = Search.new.tv(params[:query])["results"]
    @popular_shows = Discover.new.tv["results"]
  end
end
