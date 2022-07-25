class MusclesController < ApplicationController
  before_action :check_for_login

  def index
    @muscles = Muscle.all
  end

  def new
    @muscle = Muscle.new
  end

  def create
    muscle = Muscle.create muscle_params
    redirect_to muscle 
  end

  def edit
    @muscle = Muscle.find params[:id]
  end

  def update
    muscle = Muscle.find params[:id]
    muscle.update muscle_params
    redirect_to muscle
  end

  def show
    @muscle = Muscle.find params[:id]
  end

  def destroy
    muscle = Muscle.find params[:id]
    muscle.destroy
    redirect_to muscles_path
  end

  private
  def muscle_params
    params.require(:muscle).permit(:name, :image)
  end
end
