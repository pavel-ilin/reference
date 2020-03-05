class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.create(doctor_params)
    if @doctor.valid?
      redirect_to @doctor
    else
      flash[:errors] = @doctor.errors.full_messages
      # render :new
      redirect_to new_doctor_path
    end
  end

  def show
    @doctor = doctor_find
  end

  def edit
    @doctor = doctor_find
  end

  def update
    @doctor = doctor_find
    @doctor.update(doctor_params)
    if @doctor.valid?
      redirect_to @doctor
    else
      flash[:errors] = @doctor.errors.full_messages
      # render :new
      redirect_to edit_doctor_path
    end
  end

  def destroy
    doctor_find.destroy
    redirect_to doctors_path
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :password, :doctor_spec)
  end

  def doctor_find
    Doctor.find(params[:id])
  end

end