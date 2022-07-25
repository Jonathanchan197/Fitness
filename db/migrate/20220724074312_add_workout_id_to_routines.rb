class AddWorkoutIdToRoutines < ActiveRecord::Migration[5.2]
  def change
    add_column :routines, :workout_id, :integer
  end
end
