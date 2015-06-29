class BlsexposuresController < ApplicationController
  before_action :set_bls, only: [:update, :edit, :show]

  def new
    @blsexposure = Blsexposure.new
  end

  def create
    @blsexposure = Blsexposure.new bls_params
      if @blsexposure.save
        redirect_to @blsexposure, notice: "BLS Exposure!" 
      else
        render 'new'
      end
  end

  def index
    recent = Cycle.last
    @blsexposures = Blsexposure.where("cycle_id = ? and exposure_type = ?", recent.id, "Desensitization")
    data_capture(@blsexposures)
  end


  def show
  end

  private
  def set_bls
    @blsexposure = Blsexposure.find params[:id]
  end

  def bls_params
    params.require(:blsexposure).permit(:exposure_type, :loop_no, :score, :annotation, :cycle_id)
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
