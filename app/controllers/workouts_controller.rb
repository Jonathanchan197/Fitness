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

    def destroy 
        workout = Workout.find params[:id]
        workout.destroy
        redirect_to routines_path
      end

    private
    def workout_params
        params.require(:workout).permit(:sets, :reps)
    end
end
