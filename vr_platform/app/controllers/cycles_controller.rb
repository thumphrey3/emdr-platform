class CyclesController < ApplicationController
  before_action :set_cycle, only: [:update, :edit, :show]

  def new
    @cycle = Cycle.new
    render :layout => 'cyclewizard'
  end

  def create
    @cycle = Cycle.new cycle_params
      if @cycle.save
        redirect_to @cycle, notice: "Cycle has been saved for session"
      else
        render 'new'
      end
  end

  def edit
  end

  def update
    if @cycle.update(cycle_params)
      redirect_to @cycle, notice: "Cycle information has been updated!"
    else
      render 'edit'
    end
  end

  def index
  end

  def show
  end

  private
  def set_cycle
    @cycle = Cycle.find params[:id]
  end

  def cycle_params
    params.require(:cycle).permit(:number, :session, :picture, :negativecognition, :positivecognition, :initial_voc, :initial_sud, :emotion, :body_location)
  end
end