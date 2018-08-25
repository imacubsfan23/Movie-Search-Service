class ShowsController < ApplicationController
  def show
    @show = Show.new.tv(params["id"])
  end
end
