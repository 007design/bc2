class UnitWeaponsController < ApplicationController
  before_action :set_unit_weapon, only: %i[ show edit update destroy ]

  # GET /unit_weapons or /unit_weapons.json
  def index
    @unit_weapons = UnitWeapon.all
  end

  # GET /unit_weapons/1 or /unit_weapons/1.json
  def show
  end

  # GET /unit_weapons/new
  def new
    @unit_weapon = UnitWeapon.new
  end

  # GET /unit_weapons/1/edit
  def edit
  end

  # POST /unit_weapons or /unit_weapons.json
  def create
    @unit_weapon = UnitWeapon.new(unit_weapon_params)

    respond_to do |format|
      if @unit_weapon.save
        format.html { redirect_to unit_weapon_url(@unit_weapon), notice: "Unit weapon was successfully created." }
        format.json { render :show, status: :created, location: @unit_weapon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @unit_weapon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unit_weapons/1 or /unit_weapons/1.json
  def update
    respond_to do |format|
      if @unit_weapon.update(unit_weapon_params)
        format.html { redirect_to unit_weapon_url(@unit_weapon), notice: "Unit weapon was successfully updated." }
        format.json { render :show, status: :ok, location: @unit_weapon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @unit_weapon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_weapons/1 or /unit_weapons/1.json
  def destroy
    @unit_weapon.destroy

    respond_to do |format|
      format.html { redirect_to unit_weapons_url, notice: "Unit weapon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_weapon
      @unit_weapon = UnitWeapon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unit_weapon_params
      params.require(:unit_weapon).permit(:unit, :weapon, :type)
    end
end
