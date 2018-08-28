class ApiController < ApplicationController
  def index
    params[:query] ||= "The"
    params[:mode]  ||= "tv"
    params[:page]  ||= 1
    @queried = Search.new.make_request(params[:query], params[:mode])["results"]
    @popular = Discover.new.make_request(params[:page], params[:mode])["results"]
  end
end