class PublicController < ApplicationController
    def index
        @routines = Routine.all
    end

    def show
        @routine = Routine.find params[:id]
        @workouts = @routine.workouts
        @check = @workouts.collect(&:sets)
    end

end
