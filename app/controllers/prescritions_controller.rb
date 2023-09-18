class PrescritionsController < ApplicationController
  before_action :set_prescrition, only: %i[ show update destroy ]

  # GET /prescritions
  def index
    @prescritions = Prescrition.all

    render json: @prescritions
  end

  # GET /prescritions/1
  def show
    render json: @prescrition
  end

  # POST /prescritions
  def create
    @prescrition = Prescrition.new(prescrition_params)

    if @prescrition.save
      render json: @prescrition, status: :created, location: @prescrition
    else
      render json: @prescrition.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /prescritions/1
  def update
    if @prescrition.update(prescrition_params)
      render json: @prescrition
    else
      render json: @prescrition.errors, status: :unprocessable_entity
    end
  end

  # DELETE /prescritions/1
  def destroy
    @prescrition.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescrition
      @prescrition = Prescrition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prescrition_params
      params.require(:prescrition).permit(:name, :recomendation, :consultation_id)
    end
end
