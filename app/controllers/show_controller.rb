class ShowController < ApplicationController
  def index
    @shows = Show.find(:all)
  end

  def show
    @show = Show.find(params[:id])
  end
end
