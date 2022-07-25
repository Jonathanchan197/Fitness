class CreateExercisesMuscles < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises_muscles do |t|
      t.integer :exercise_id
      t.integer :muscle_id
    end
  end
end
