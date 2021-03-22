class TeachersController < ApplicationController
  def index
    @teacher = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to teachers_path
    else
      p @teacher.errors.messages
      render :new
    end
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    @teacher.update(teacher_params)
    redirect_to teachers_path
  end

  def destroy
    @teacher = Teacher.find(params[:id]).destroy!
    redirect_to teachers_path, notice: "Teacher was successfully destroyed."
  end

  def teacher_params
    return params.require(:teacher).permit(:name, :address, :gender, :religion, :phone, :email, :date_birth, :national_id, :stage_id, :subject_id)
  end
end
