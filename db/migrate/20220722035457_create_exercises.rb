class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.text :name
      t.text :image
      t.text :youtube

      t.timestamps
    end
  end
end
