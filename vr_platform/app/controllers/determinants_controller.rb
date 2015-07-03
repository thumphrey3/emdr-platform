class DeterminantsController < ApplicationController
  before_action :set_determinant, only: [:update, :edit, :show]

  def new
    @determinant = Determinant.new
  end

  def create
    @determinant = Determinant.new determinant_params
      if @determinant.save
        redirect_to @determinant, notice: "Social determinants have been saved."
      else
        render 'new'
      end
  end

  def edit
  end

  def update
    if @determinant.update(determinant_params)
      redirect_to @determinant, notice: "Social determinant information has been updated!"
    else
      render 'edit'
    end
  end

  def show
  end

  def index
  end

  private
  def set_determinant
    @determinant = Determinant.find params[:id]
  end

  def determinant_params
    params.require(:determinant).permit(:occupation, :education, :support_network, :personal_interest, :living_conditions, :ace_response, :patient_id)
  end
end
