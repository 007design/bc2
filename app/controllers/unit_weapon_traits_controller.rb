class UnitWeaponTraitsController < ApplicationController
  before_action :set_unit_weapon_trait, only: %i[ show edit update destroy ]

  # GET /unit_weapon_traits or /unit_weapon_traits.json
  def index
    @unit_weapon_traits = UnitWeaponTrait.all
  end

  # GET /unit_weapon_traits/1 or /unit_weapon_traits/1.json
  def show
  end

  # GET /unit_weapon_traits/new
  def new
    @unit_weapon_trait = UnitWeaponTrait.new
  end

  # GET /unit_weapon_traits/1/edit
  def edit
  end

  # POST /unit_weapon_traits or /unit_weapon_traits.json
  def create
    @unit_weapon_trait = UnitWeaponTrait.new(unit_weapon_trait_params)

    respond_to do |format|
      if @unit_weapon_trait.save
        format.html { redirect_to unit_weapon_trait_url(@unit_weapon_trait), notice: "Unit weapon trait was successfully created." }
        format.json { render :show, status: :created, location: @unit_weapon_trait }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @unit_weapon_trait.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unit_weapon_traits/1 or /unit_weapon_traits/1.json
  def update
    respond_to do |format|
      if @unit_weapon_trait.update(unit_weapon_trait_params)
        format.html { redirect_to unit_weapon_trait_url(@unit_weapon_trait), notice: "Unit weapon trait was successfully updated." }
        format.json { render :show, status: :ok, location: @unit_weapon_trait }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @unit_weapon_trait.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_weapon_traits/1 or /unit_weapon_traits/1.json
  def destroy
    @unit_weapon_trait.destroy

    respond_to do |format|
      format.html { redirect_to unit_weapon_traits_url, notice: "Unit weapon trait was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_weapon_trait
      @unit_weapon_trait = UnitWeaponTrait.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unit_weapon_trait_params
      params.require(:unit_weapon_trait).permit(:unit_weapon, :trait, :value)
    end
end
