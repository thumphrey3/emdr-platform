class TargetsController < ApplicationController
  def new
    @target = Target.new
  end

  def create
    @target = Target.new target_params
  end
    
  def show
  end

  def index
    recent = Cycle.last
    @blsexposures = Blsexposure.where("cycle_id= ? and exposure_type = ?", recent.id, "Installation")
    data_capture(@blsexposures)
  end

  def update
  end

  private
  def target_params
    params.require(:target).permit(:patient_id, :name, :description, :priority) 
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