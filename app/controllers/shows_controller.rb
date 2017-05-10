class ShowsController < ApplicationController

  before_action :authenticate_user!

  def show_params
    params.require(:show).permit([:title, :series, :description, :image, :programmeID])
  end

  def index
    shows = Show.all
    render :json => shows
  end

  def create
    show = Show.create(show_params)
    render :json => show
  end

  def favourited_by
    users = Show.find(params[:id]).favourited_by
    render :json => users
  end

  def show
    render json: Show.find(params[:id])
  end

end