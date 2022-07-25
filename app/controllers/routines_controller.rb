class RoutinesController < ApplicationController
  before_action :check_for_login
  
  def index
    @routines = @current_user.routines
  end

  def new
    @routine = Routine.new
    @routine.workouts.build
  end

  def create
    routine = Routine.create routine_params
    workout = routine.workouts.build
    workout.sets = params[:workouts][:sets]
    workout.reps = params[:workouts][:reps]
    workout.exercise_id = params[:workouts][:exercise_id]
    workout.save
    @current_user.routines << routine
    redirect_to routines_path
  end

  def edit
    @routine = Routine.find params[:id]
    @routine.workouts.build
    workouts = @current_user.workouts
  end

  def update
    routine = Routine.find params[:id]
    workout = routine.workouts.build
    workout.sets = params[:workouts][:sets]
    workout.reps = params[:workouts][:reps]
    workout.exercise_id = params[:workouts][:exercise_id]
    workout.save
    routine.update routine_params
    redirect_to routine
  end

  def show
    @routine = Routine.find params[:id]
    @workouts = @routine.workouts
  end

  def destroy 
    routine = Routine.find params[:id]
    routine.destroy
    redirect_to routines_path
  end

  private
  def routine_params
    params.require(:routine).permit(:title, workouts_attributes: [:sets, :reps, :exercise_id])
  end
end
