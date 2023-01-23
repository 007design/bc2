class UnitFactionsController < ApplicationController
  before_action :set_unit_faction, only: %i[ show edit update destroy ]

  # GET /unit_factions or /unit_factions.json
  def index
    @unit_factions = UnitFaction.all
  end

  # GET /unit_factions/1 or /unit_factions/1.json
  def show
  end

  # GET /unit_factions/new
  def new
    @unit_faction = UnitFaction.new
  end

  # GET /unit_factions/1/edit
  def edit
  end

  # POST /unit_factions or /unit_factions.json
  def create
    @unit_faction = UnitFaction.new(unit_faction_params)

    respond_to do |format|
      if @unit_faction.save
        format.html { redirect_to unit_faction_url(@unit_faction), notice: "Unit faction was successfully created." }
        format.json { render :show, status: :created, location: @unit_faction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @unit_faction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unit_factions/1 or /unit_factions/1.json
  def update
    respond_to do |format|
      if @unit_faction.update(unit_faction_params)
        format.html { redirect_to unit_faction_url(@unit_faction), notice: "Unit faction was successfully updated." }
        format.json { render :show, status: :ok, location: @unit_faction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @unit_faction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_factions/1 or /unit_factions/1.json
  def destroy
    @unit_faction.destroy

    respond_to do |format|
      format.html { redirect_to unit_factions_url, notice: "Unit faction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_faction
      @unit_faction = UnitFaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unit_faction_params
      params.require(:unit_faction).permit(:unit, :faction)
    end
end
