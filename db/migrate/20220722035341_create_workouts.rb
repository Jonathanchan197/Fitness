class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.integer :sets
      t.integer :reps
      t.timestamps
    end
  end
end
