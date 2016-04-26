class WorkoutsController < ApplicationController

def index
    @workouts = Workout.all
  end

  def show
    @workout = User.find(params[:workout_id])
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      session[:workout_id] = @workout.id
      redirect_to user_profile_path(current_user),
      notice: "Thank you for posting your workout #{@user.first_name.titlecase}"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def workout_params
    params.require(:workout).permit(
                              :date, :workout,
      :motivation_level, :length_lifting, :length_hitting_cardio
    )
  end


end
