class PublicController < ApplicationController

    def index
        @routines = Routine.all
    end

    def show
        @routine = Routine.find params[:id]
        @workouts = @routine.workouts
    end

end
