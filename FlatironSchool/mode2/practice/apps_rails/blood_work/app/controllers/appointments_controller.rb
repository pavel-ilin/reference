class AppointmentsController < ApplicationController

  def index

  end

  def new
    all_doctors
    all_patients
    # patients_find
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(appointment_params)
    if @appointment.valid?
      redirect_to @appointment.patient
    else
      redirect_to @appointment.patient
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  def delete

  end


  private

  def appointment_params
    params.require(:appointment).permit(:date, :patient_id, :doctor_id)
  end


  def all_doctors
    @doctors = Doctor.all
  end

  def all_patients
    @patients = Patient.all
  end
end
