class AttestedsController < ApplicationController
  before_action :set_attested, only: %i[ show update destroy ]

  # GET /attesteds
  def index
    @attesteds = Attested.all

    render json: @attesteds
  end

  # GET /attesteds/1
  def show
    render json: @attested
  end

  # POST /attesteds
  def create
    @attested = Attested.new(attested_params)

    if @attested.save
      render json: @attested, status: :created, location: @attested
    else
      render json: @attested.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /attesteds/1
  def update
    if @attested.update(attested_params)
      render json: @attested
    else
      render json: @attested.errors, status: :unprocessable_entity
    end
  end

  # DELETE /attesteds/1
  def destroy
    @attested.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attested
      @attested = Attested.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attested_params
      params.require(:attested).permit(:attest, :days, :consultation_id)
    end
end
