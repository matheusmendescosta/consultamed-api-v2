class HealthPlansController < ApplicationController
  before_action :set_health_plan, only: %i[ show update destroy ]

  # GET /health_plans
  def index
    @health_plans = HealthPlan.all

    render json: @health_plans
  end

  # GET /health_plans/1
  def show
    render json: @health_plan
  end

  # POST /health_plans
  def create
    @health_plan = HealthPlan.new(health_plan_params)

    if @health_plan.save
      render json: @health_plan, status: :created, location: @health_plan
    else
      render json: @health_plan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /health_plans/1
  def update
    if @health_plan.update(health_plan_params)
      render json: @health_plan
    else
      render json: @health_plan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /health_plans/1
  def destroy
    @health_plan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_plan
      @health_plan = HealthPlan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def health_plan_params
      params.require(:health_plan).permit(:product, :identification_code, :plan, :coverage, :coparcenary, :company, :cns, :clinic_id, :patient_id)
    end
end
