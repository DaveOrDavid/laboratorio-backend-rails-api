class AppliancesController < ProtectedController
  # changed ProtectedController from ApplicationController
  before_action :set_appliance, only: %i[update destroy show]

  # GET /appliances
  def index
    @appliances = current_user.appliances.all
    # @appliances = Appliance.all // commented this original line out

    render json: @appliances
  end

  # GET /appliances/1
  def show
    render json: @appliance
  end

  # POST /appliances
  def create
    @appliance = current_user.appliances.build(appliance_params)

    if @appliance.save
      render json: @appliance, status: :created
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
      # @appliance = Appliance.find(params[:id]) // commented this original line out
      @appliance = current_user.appliances.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def appliance_params
      params.require(:appliance).permit(:location, :part_number, :image_url)
    end
end
