class AddRoutineIdToWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :routine_id, :integer
    add_column :workouts, :exercise_id, :integer
    add_column :workouts, :user_id, :integer
  end
end
