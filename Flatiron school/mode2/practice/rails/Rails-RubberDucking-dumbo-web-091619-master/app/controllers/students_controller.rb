class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    student = Student.create(params.require(:student).permit(:name, :mod))
    if student.valid?
        redirect_to student
    else
      redirect_to new_student_path
    end
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student).permit(:name, :mod))
    if @student.valid?
        redirect_to @student
    else
      redirect_to edit_student_path
    end
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy
    redirect_to students_path
  end

end
