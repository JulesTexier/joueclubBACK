class InscritsController < ApplicationController
  before_action :set_inscrit, only: [:show, :update, :destroy]

  # GET /inscrits
  def index
    @inscrits = Inscrit.all

    render json: @inscrits
  end

  # GET /inscrits/1
  def show
    render json: @inscrit
  end

  # POST /inscrits
  def create
    @inscrit = Inscrit.new(inscrit_params)

    if @inscrit.save
      render json: @inscrit, status: :created, location: @inscrit
    else
      render json: @inscrit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inscrits/1
  def update
    if @inscrit.update(inscrit_params)
      render json: @inscrit
    else
      render json: @inscrit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inscrits/1
  def destroy
    @inscrit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inscrit
      @inscrit = Inscrit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inscrit_params
      params.require(:inscrit).permit(:firstname, :lastname, :birthdate, :amount, :adress, :zipcode, :city  )
    end
end
