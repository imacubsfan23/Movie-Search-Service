class MoviesController < ApplicationController
  def show
    @movie = Movie.new.make_request(params["id"])
  end
end
