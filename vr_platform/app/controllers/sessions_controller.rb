class SessionsController < ApplicationController
  before_action :set_session, only: [:update, :edit, :show]

  def index
    @sessions = Session.all
  end

  def new
    @session = Session.new 
  end

  def show
  end

  def create
    @session = Session.new session_params
      if @session.save
          redirect_to @session, notice: "Session was saved."
      else
          render 'new'
      end
  end

  def update
    if @session.update(session_params)
          redirect_to @session, notice: "Session information was updated!"
      else
        render 'edit'
      end
  end

  def edit
  end

  private 
  def set_session
    @session = Session.find params[:id]
  end
  def session_params
    params.require(:session).permit(:appointment_date, :patient_id, :number)
  end
end
