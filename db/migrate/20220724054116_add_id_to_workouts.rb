class AddIdToWorkouts < ActiveRecord::Migration[5.2]
  def change
    add_column :workouts, :exercise_id, :integer
    add_column :workouts, :name, :text
  end
end
