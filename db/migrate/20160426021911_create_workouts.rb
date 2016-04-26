class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.datetime :date
      t.string :workout
      t.integer :motivation_level
      t.string :length_lifting
      t.string :length_hitting_cardio

      t.timestamps null: false
    end
  end
end
