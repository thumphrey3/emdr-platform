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
    params.require(:cycle).permit(:number, :session_id, :picture, :negativecognition, :positivecognition, :initial_voc, :initial_sud, :emotion, :body_location, :body_final, :notes, :status)
  end

  def data_capture(bls_measurements)
    pre_dataset = []

    bls_measurements.each do |run|
      r_hash = Hash.new
      r_hash['loop'] = run.loop_no
      r_hash['score'] = run.score
      r_hash['annotation'] = run.annotation

      pre_dataset.push(r_hash)
    end

    @dataset = pre_dataset.to_json
  end
end