class ExercisesController < ApplicationController
  before_action :check_for_login
  
  def muscle_checker num
    m = Muscle.all
    m = m.map {|muscle| muscle.id.to_s}
    m & num
  end

  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
    @muscles = Muscle.all
  end

  def create
    exercise = Exercise.create exercise_params
    if !params[:muscle].nil?
      muscle_groups = muscle_checker params[:muscle] 
      exercise.muscles.clear
        muscle_groups.each do |n|
          muscle = Muscle.find [n]
          exercise.muscles << muscle
        end
    else
      exercise.muscles.clear
    end
    redirect_to exercise
  end

  def edit
    @exercise = Exercise.find params[:id]
    @muscles = Muscle.all
  end

  def update
    exercise = Exercise.find params[:id]
    if !params[:muscle].nil?
      muscle_groups = muscle_checker params[:muscle] 
      exercise.muscles.clear
        muscle_groups.each do |n|
          muscle = Muscle.find [n]
          exercise.muscles << muscle
        end
    else
      exercise.muscles.clear
    end
    exercise.update exercise_params
    redirect_to exercise 
  end

  def show
    @exercise = Exercise.find params[:id]
    @muscles = @exercise.muscles
  end

  def destroy
    exercise = Exercise.find params[:id]
    if @current_user.admin?
      exercise.destroy
      redirect_to exercises_path
    else 
      redirect_to exercise
    end
  end

  private
  def exercise_params
    params.require(:exercise).permit(:name, :image, :youtube, muscles_attributes: [:name, :image])
  end
end
