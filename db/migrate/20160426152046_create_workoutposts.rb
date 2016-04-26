class CreateWorkoutposts < ActiveRecord::Migration
  def change
    create_table :workoutposts do |t|
      t.string :body_part
      t.string :duration
      t.string :name_of_workout
      t.string :description_of_workout
      t.integer :reps
      t.integer :sets

      t.timestamps null: false
    end
  end
end
