class TargetsController < ApplicationController
  def new
    @target = Target.new
  end

  def create
    @target = Target.new target_params
  end
    
  end
  def show
  end

  def index
  end

  def update
  end

  private
  def target_params
    params.require(:target).permit(:patient_id, :name, :description, :priority) 
  end
