class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def new
    all_doctors
    @patient = Patient.new
  end

  def create
    # byebug
    @patient = Patient.create(patient_params)
    redirect_to @patient
  end

  def show
    @patient = patient_find
    my_appointments
    my_results
  end

  def edit
    @patient = patient_find
  end

  def update
    @patient = patient_find
    @patient.update(patient_params)
    redirect_to @patient
  end

  def destroy
    patient_find.destroy
    redirect_to patients_path
  end

  private


  def patient_params
    params.require(:patient).permit(:name, :password, :age, :gender, :doctor_id)
  end

  def my_appointments
    @appointments = Appointment.where(patient_id: params[:id])
  end

  def my_results
    @results = Result.where(patient_id: params[:id])
  end

  def patient_find
    Patient.find(params[:id])
  end

  def all_doctors
    @doctors = Doctor.all
  end

  def all_appointments
    @appointments = Appointment.all
  end

end