class AppliancesController < ApplicationController
  before_action :set_appliance, only: [:show, :update, :destroy]

  # GET /appliances
  def index
    @appliances = Appliance.all

    render json: @appliances
  end

  # GET /appliances/1
  def show
    render json: @appliance
  end

  # POST /appliances
  def create
    @appliance = Appliance.new(appliance_params)

    if @appliance.save
      render json: @appliance, status: :created, location: @appliance
    else
      render json: @appliance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /appliances/1
  def update
    if @appliance.update(appliance_params)
      render json: @appliance
    else
      render json: @appliance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appliances/1
  def destroy
    @appliance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appliance
      @appliance = Appliance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def appliance_params
      params.require(:appliance).permit(:location, :part_number, :image_url)
    end
end
