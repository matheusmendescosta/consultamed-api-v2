class ConsultationsController < ApplicationController
  before_action :set_consultation, only: %i[ show update destroy ]

  # GET /consultations
  def index
    @consultations = Consultation.all

    render json: @consultations
  end

  # GET /consultations/1
  def show
    render json: @consultation
  end

  # POST /consultations
  def create
    @consultation = Consultation.new(consultation_params)

    if @consultation.save
      render json: @consultation, status: :created, location: @consultation
    else
      render json: @consultation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /consultations/1
  def update
    if @consultation.update(consultation_params)
      render json: @consultation
    else
      render json: @consultation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /consultations/1
  def destroy
    @consultation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultation
      @consultation = Consultation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consultation_params
      params.require(:consultation).permit(:doctor_id, :patient_id, :clinic_id, :prognostic, :diagnosis)
    end
end
