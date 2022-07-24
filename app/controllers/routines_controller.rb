class RoutinesController < ApplicationController
  before_action :check_for_login
  
  def index
    @routines = Routine.all
  end

  def new
    @routine = Routine.new
  end

  def create
    routine = Routine.create routine_params
    @current_user.routines << routine
    
    redirect_to routines_path
  end

  def edit
    @routine = Routine.find params[:id]
  end

  def update
    routine = Routine.find params[:id]
    routine.update routine_params
    redirect_to routine
  end

  def show
    routine = Routine.find params[:id]
  end

  def destroy 
    routine = Routine.find params[:id]
    routine.destroy
    redirect_to routines_path
  end

  private
  def routine_params
    params.require(:routine).permit(:title)
  end
end
