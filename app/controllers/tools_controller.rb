class ToolsController < ProtectedController
  before_action :set_tool, only: %i[update destroy show]

  # GET /tools
  def index
    @tools = current_user.tools.all

    render json: @tools
  end

  # GET /tools/1
  def show
    render json: @tool
  end

  # POST /tools
  def create
    @tool = current_user.tools.build(tool_params)

    if @tool.save
      render json: @tool, status: :created, location: @tool
    else
      render json: @tool.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tools/1
  def update
    if @tool.update(tool_params)
      render json: @tool
    else
      render json: @tool.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tools/1
  def destroy
    @tool.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tool
      @tool = current_user.tools.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tool_params
      params.require(:tool).permit(:name, :category)
    end
end
