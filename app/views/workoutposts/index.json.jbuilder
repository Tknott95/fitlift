json.array!(@workoutposts) do |workoutpost|
  json.extract! workoutpost, :id, :body_part, :duration, :name_of_workout, :description_of_workout, :reps, :sets
  json.url workoutpost_url(workoutpost, format: :json)
end
