class HomeController < ApplicationController
  def index
  end

  def show
    @home = Home.find(params[:id])
  end

  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)

    if @home.save
      redirect_to @home
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def home_params
    params.require(:home).permit(:email, :password)
  end
end
