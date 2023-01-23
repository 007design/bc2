class UnitModelTypesController < ApplicationController
  before_action :set_unit_model_type, only: %i[ show edit update destroy ]

  # GET /unit_model_types or /unit_model_types.json
  def index
    @unit_model_types = UnitModelType.all
  end

  # GET /unit_model_types/1 or /unit_model_types/1.json
  def show
  end

  # GET /unit_model_types/new
  def new
    @unit_model_type = UnitModelType.new
  end

  # GET /unit_model_types/1/edit
  def edit
  end

  # POST /unit_model_types or /unit_model_types.json
  def create
    @unit_model_type = UnitModelType.new(unit_model_type_params)

    respond_to do |format|
      if @unit_model_type.save
        format.html { redirect_to unit_model_type_url(@unit_model_type), notice: "Unit model type was successfully created." }
        format.json { render :show, status: :created, location: @unit_model_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @unit_model_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unit_model_types/1 or /unit_model_types/1.json
  def update
    respond_to do |format|
      if @unit_model_type.update(unit_model_type_params)
        format.html { redirect_to unit_model_type_url(@unit_model_type), notice: "Unit model type was successfully updated." }
        format.json { render :show, status: :ok, location: @unit_model_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @unit_model_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_model_types/1 or /unit_model_types/1.json
  def destroy
    @unit_model_type.destroy

    respond_to do |format|
      format.html { redirect_to unit_model_types_url, notice: "Unit model type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_model_type
      @unit_model_type = UnitModelType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unit_model_type_params
      params.require(:unit_model_type).permit(:unit, :model_type)
    end
end
