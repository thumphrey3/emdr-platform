class PatientsController < ApplicationController
  before_action :set_patient, only: [:update, :edit, :show]

  def new
    @patient = Patient.new
  end

  def show
  end

  def create
    @patient = Patient.new patient_params
      if @patient.save
          redirect_to @patient, notice: "Patient was saved."
      else
          render 'new'
      end
  end

  def index
  end

  def edit
  end

  def update
    if @patient.update(patient_params)
          redirect_to @patient, notice: "Patient information was updated!"
      else
        render 'edit'
      end
  end

  private 
  def set_patient
      @patient = Patient.find params[:id]
  end

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :gender, :age, :medication, :conditions => [])
  end
end
