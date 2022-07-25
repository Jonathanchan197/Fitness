class ExercisesController < ApplicationController
  before_action :check_for_login
  
  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new 
    @exercise.muscles.build
  end

  def create
    exercise = Exercise.create exercise_params
    muscle = Muscle.find params[:muscles][:muscle_id]
    exercise.muscles << muscle
    redirect_to exercise
  end

  def edit
    @exercise = Exercise.find params[:id]
    @exercise.muscles.build
  end

  def update
    exercise = Exercise.find params[:id]
    muscle = Muscle.find params[:muscles][:muscle_id]
    exercise.muscles << muscle
    exercise.update exercise_params
    redirect_to exercise 
  end

  def show
    @exercise = Exercise.find params[:id]
    @muscles = @exercise.muscles
  end

  def destroy
    exercise = Exercise.find params[:id]
    exercise.destroy
    redirect_to exercises_path
  end

  private
  def exercise_params
    params.require(:exercise).permit(:name, :image, :youtube, muscles_attributes: [:name, :image])
  end
end
