class WorkoutsController < ApplicationController
    before_action :check_for_login

    def index
        @workouts = Workout.all
    end

    def new
        @workout = Workout.new
    end
    
    def create
        workout = Workout.new workout_params
        @current_user.workouts << workout
        redirect_to workouts_path
    end

    def edit
        @workout = Workout.find params[:id]
    end
    
    def update
        workout = Workout.find params[:id]
        workout.update workout_params
        redirect_to "/routines/#{workout[:routine_id]}" 
    end

    def destroy 
        workout = Workout.find params[:id]
        workout.destroy
        redirect_to "/routines/#{workout[:routine_id]}" 
      end

    private
    def workout_params
        params.require(:workout).permit(:sets, :reps, :name, :exercise_id, :routine_id)
    end
end
