class UnitMovementModesController < ApplicationController
  before_action :set_unit_movement_mode, only: %i[ show edit update destroy ]

  # GET /unit_movement_modes or /unit_movement_modes.json
  def index
    @unit_movement_modes = UnitMovementMode.all
  end

  # GET /unit_movement_modes/1 or /unit_movement_modes/1.json
  def show
  end

  # GET /unit_movement_modes/new
  def new
    @unit_movement_mode = UnitMovementMode.new
  end

  # GET /unit_movement_modes/1/edit
  def edit
  end

  # POST /unit_movement_modes or /unit_movement_modes.json
  def create
    @unit_movement_mode = UnitMovementMode.new(unit_movement_mode_params)

    respond_to do |format|
      if @unit_movement_mode.save
        format.html { redirect_to unit_movement_mode_url(@unit_movement_mode), notice: "Unit movement mode was successfully created." }
        format.json { render :show, status: :created, location: @unit_movement_mode }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @unit_movement_mode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unit_movement_modes/1 or /unit_movement_modes/1.json
  def update
    respond_to do |format|
      if @unit_movement_mode.update(unit_movement_mode_params)
        format.html { redirect_to unit_movement_mode_url(@unit_movement_mode), notice: "Unit movement mode was successfully updated." }
        format.json { render :show, status: :ok, location: @unit_movement_mode }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @unit_movement_mode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_movement_modes/1 or /unit_movement_modes/1.json
  def destroy
    @unit_movement_mode.destroy

    respond_to do |format|
      format.html { redirect_to unit_movement_modes_url, notice: "Unit movement mode was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_movement_mode
      @unit_movement_mode = UnitMovementMode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unit_movement_mode_params
      params.require(:unit_movement_mode).permit(:unit, :movement_type, :value)
    end
end
