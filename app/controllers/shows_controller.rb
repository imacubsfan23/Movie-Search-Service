class ShowsController < ApplicationController
  def show
    @show = Show.new.make_request(params["id"])
  end
end
