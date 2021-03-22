class ClassroomsController < ApplicationController
  before_action :set_classroom, only: [:show, :edit, :update, :destroy]

  # GET /classrooms
  def index
    @classrooms = Classroom.all
  end

  # GET /classrooms/new
  def new
    @classroom = Classroom.new
  end

  # POST /classrooms
  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      redirect_to classrooms_path, notice: "Classroom was successfully created."
    else
      render :new
    end
  end

  # GET /classrooms/1
  def show
    @classroom = Classroom.find(params[:id])
  end

  # GET /classrooms/1/edit
  def edit
    @classroom = Classroom.find(params[:id])
  end

  # PATCH/PUT /classrooms/1
  def update
    @classroom = Classroom.find(params[:id])

    if @classroom.update(classroom_params)
      redirect_to classrooms_path, notice: "Classroom was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /classrooms/1
  def destroy
    @classroom = Classroom.find(params[:id]).destroy!
    redirect_to classrooms_path, notice: "Classroom was successfully destroyed."
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_classroom
    @classroom = Classroom.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  private

  def classroom_params
    params.require(:classroom).permit(:name, :stage_id)
  end
end
