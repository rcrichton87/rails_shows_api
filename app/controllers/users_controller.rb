class UsersController < ActionController::Base

  before_action :authenticate_user!
  def index
    render json: current_user
  end

  def favourites
    favourites = current_user.favourites
    render json: favourites
  end

  def show
    render json: current_user
  end
  
end