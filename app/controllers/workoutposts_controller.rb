class WorkoutpostsController < ApplicationController
  before_action :set_workoutpost, only: [:show, :edit, :update, :destroy]

  # GET /workoutposts
  # GET /workoutposts.json
  def index
    @workoutposts = Workoutpost.order(params[:sort] + ' ' + params[:direction]).all
  end

  # GET /workoutposts/1
  # GET /workoutposts/1.json
  def show
  end

  # GET /workoutposts/new
  def new
    @workoutpost = Workoutpost.new
  end

  # GET /workoutposts/1/edit
  def edit
  end

  # POST /workoutposts
  # POST /workoutposts.json
  def create
    @workoutpost = Workoutpost.new(workoutpost_params)

    respond_to do |format|
      if @workoutpost.save
        format.html { redirect_to @workoutpost, notice: 'Workoutpost was successfully created.' }
        format.json { render :show, status: :created, location: @workoutpost }
      else
        format.html { render :new }
        format.json { render json: @workoutpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workoutposts/1
  # PATCH/PUT /workoutposts/1.json
  def update
    respond_to do |format|
      if @workoutpost.update(workoutpost_params)
        format.html { redirect_to @workoutpost, notice: 'Workoutpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @workoutpost }
      else
        format.html { render :edit }
        format.json { render json: @workoutpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workoutposts/1
  # DELETE /workoutposts/1.json
  def destroy
    @workoutpost.destroy
    respond_to do |format|
      format.html { redirect_to workoutposts_url, notice: 'Workoutpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workoutpost
      @workoutpost = Workoutpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workoutpost_params
      params.require(:workoutpost).permit(:body_part, :duration, :name_of_workout, :description_of_workout, :reps, :sets)
    end
end
