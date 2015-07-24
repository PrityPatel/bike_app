class BicyclesController < ApplicationController
  def index
  end

  def new
    @bicycle = current_user.bicycles.new
  end

  def create
    @bicycle = current_user.bicycles.new(bicycle_params)
    if @bicycle.save
      redirect_to user_path(current_user)
    else
      render 'new'
    end
  end

  def edit
    @bicycle = current_user.bicycles.find_by(params[:id])
    if @bicycle.save
      redirect_to user_path(current_user)
    else
      render 'edit'
    end
  end

  def show
  end

  private
  def bicycle_params
    params.require(:bicycle).permit(:desciption, :price, :url)
  end

  def check_logged_in
    current_user
  end
end

