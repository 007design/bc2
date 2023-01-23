class UnitChassisController < ApplicationController
  before_action :set_unit_chassi, only: %i[ show edit update destroy ]

  # GET /unit_chassis or /unit_chassis.json
  def index
    @unit_chassis = UnitChassi.all
  end

  # GET /unit_chassis/1 or /unit_chassis/1.json
  def show
  end

  # GET /unit_chassis/new
  def new
    @unit_chassi = UnitChassi.new
  end

  # GET /unit_chassis/1/edit
  def edit
  end

  # POST /unit_chassis or /unit_chassis.json
  def create
    @unit_chassi = UnitChassi.new(unit_chassi_params)

    respond_to do |format|
      if @unit_chassi.save
        format.html { redirect_to unit_chassi_url(@unit_chassi), notice: "Unit chassi was successfully created." }
        format.json { render :show, status: :created, location: @unit_chassi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @unit_chassi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unit_chassis/1 or /unit_chassis/1.json
  def update
    respond_to do |format|
      if @unit_chassi.update(unit_chassi_params)
        format.html { redirect_to unit_chassi_url(@unit_chassi), notice: "Unit chassi was successfully updated." }
        format.json { render :show, status: :ok, location: @unit_chassi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @unit_chassi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_chassis/1 or /unit_chassis/1.json
  def destroy
    @unit_chassi.destroy

    respond_to do |format|
      format.html { redirect_to unit_chassis_url, notice: "Unit chassi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_chassi
      @unit_chassi = UnitChassi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unit_chassi_params
      params.require(:unit_chassi).permit(:unit, :chassis)
    end
end
