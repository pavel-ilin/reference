class ResultsController < ApplicationController

  def index

  end

  def new
    all_patients

    @result = Result.new
  end

  def create
    @result = Result.create(results_params)
    if @result.valid?
      redirect_to new_result_path
    else
      redirect_to @result.patient
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

  def results_params
    params.require(:result).permit(:date, :patient_id, :systolic, :diastolic, :weight, :temperature)
  end

  def all_doctors
    @doctors = Doctor.all
  end

  def all_patients
    @patients = Patient.all
  end

end