class MovementModesController < ApplicationController
  before_action :set_movement_mode, only: %i[ show edit update destroy ]

  # GET /movement_modes or /movement_modes.json
  def index
    @movement_modes = MovementMode.all
  end

  # GET /movement_modes/1 or /movement_modes/1.json
  def show
  end

  # GET /movement_modes/new
  def new
    @movement_mode = MovementMode.new
  end

  # GET /movement_modes/1/edit
  def edit
  end

  # POST /movement_modes or /movement_modes.json
  def create
    @movement_mode = MovementMode.new(movement_mode_params)

    respond_to do |format|
      if @movement_mode.save
        format.html { redirect_to movement_mode_url(@movement_mode), notice: "Movement mode was successfully created." }
        format.json { render :show, status: :created, location: @movement_mode }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movement_mode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movement_modes/1 or /movement_modes/1.json
  def update
    respond_to do |format|
      if @movement_mode.update(movement_mode_params)
        format.html { redirect_to movement_mode_url(@movement_mode), notice: "Movement mode was successfully updated." }
        format.json { render :show, status: :ok, location: @movement_mode }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movement_mode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movement_modes/1 or /movement_modes/1.json
  def destroy
    @movement_mode.destroy

    respond_to do |format|
      format.html { redirect_to movement_modes_url, notice: "Movement mode was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movement_mode
      @movement_mode = MovementMode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movement_mode_params
      params.require(:movement_mode).permit(:name)
    end
end
