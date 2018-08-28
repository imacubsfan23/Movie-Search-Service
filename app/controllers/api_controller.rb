class ApiController < ApplicationController
  def index
    params[:query] ||= "The"
    @queried = Search.new.make_request(params[:query])["results"]
    @popular = Discover.new.make_request["results"]
  end
end