class OptionWeaponUpgradesController < ApplicationController
  before_action :set_option_weapon_upgrade, only: %i[ show edit update destroy ]

  # GET /option_weapon_upgrades or /option_weapon_upgrades.json
  def index
    @option_weapon_upgrades = OptionWeaponUpgrade.all
  end

  # GET /option_weapon_upgrades/1 or /option_weapon_upgrades/1.json
  def show
  end

  # GET /option_weapon_upgrades/new
  def new
    @option_weapon_upgrade = OptionWeaponUpgrade.new
  end

  # GET /option_weapon_upgrades/1/edit
  def edit
  end

  # POST /option_weapon_upgrades or /option_weapon_upgrades.json
  def create
    @option_weapon_upgrade = OptionWeaponUpgrade.new(option_weapon_upgrade_params)

    respond_to do |format|
      if @option_weapon_upgrade.save
        format.html { redirect_to option_weapon_upgrade_url(@option_weapon_upgrade), notice: "Option weapon upgrade was successfully created." }
        format.json { render :show, status: :created, location: @option_weapon_upgrade }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @option_weapon_upgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /option_weapon_upgrades/1 or /option_weapon_upgrades/1.json
  def update
    respond_to do |format|
      if @option_weapon_upgrade.update(option_weapon_upgrade_params)
        format.html { redirect_to option_weapon_upgrade_url(@option_weapon_upgrade), notice: "Option weapon upgrade was successfully updated." }
        format.json { render :show, status: :ok, location: @option_weapon_upgrade }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @option_weapon_upgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /option_weapon_upgrades/1 or /option_weapon_upgrades/1.json
  def destroy
    @option_weapon_upgrade.destroy

    respond_to do |format|
      format.html { redirect_to option_weapon_upgrades_url, notice: "Option weapon upgrade was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option_weapon_upgrade
      @option_weapon_upgrade = OptionWeaponUpgrade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def option_weapon_upgrade_params
      params.require(:option_weapon_upgrade).permit(:option, :upgrade)
    end
end
