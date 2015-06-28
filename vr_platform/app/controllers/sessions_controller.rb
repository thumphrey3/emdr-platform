class SessionsController < ApplicationController
  def index
  end

  def new
    @session = Session.new 
  end

  def show
  end

  def create
  end

  def update
  end

  def edit
  end

  private 
  def session_params
    params.require(:session).permit(:appointment_date, :patient_id)
  end
end
