class ClinicsController < ApplicationController
  before_action :set_clinic, only: %i[ show update destroy ]

  # GET /clinics
  def index
    @clinics = Clinic.all

    render json: @clinics
  end

  # GET /clinics/1
  def show
    @clinic = Clinic.includes(:address, :doctor, :patient).find(params[:id])
    render json: @clinic.to_json( include: {address: {}, doctor:{}, patient:{}} )
  end

  # POST /clinics
  def create
    @clinic = Clinic.new(clinic_params)

    if @clinic.save
      render json: @clinic, status: :created, location: @clinic
    else
      render json: @clinic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clinics/1
  def update
    if @clinic.update(clinic_params)
      render json: @clinic
    else
      render json: @clinic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clinics/1
  def destroy
    @clinic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinic
      @clinic = Clinic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clinic_params
      params.require(:clinic).permit(:name, :email, :phone, :doctor_id, :patient_id, :address_id, :specialty_id)
    end
end
