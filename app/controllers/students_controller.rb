class StudentsController < ApplicationController
  def index
    @student = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path, notice: "Student was successfully created."
    else
      render :new
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])
    if student.update(student_params)
      redirect_to student_path, notice: "Student was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @student = Student.find(params[:id]).destroy!
    redirect_to students_path, :notice => "Student was successfully destroyed."
  end

  def students_dashboards
    @student = Student.find(params[:id])
  end

  def student_params
    return params.require(:student).permit(:code, :name, :address, :gender, :religion, :phone, :email, :date_birth, :stage_id, :bus_id, :parent_id, :cv)
  end
end
