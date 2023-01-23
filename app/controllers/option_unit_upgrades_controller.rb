class OptionUnitUpgradesController < ApplicationController
  before_action :set_option_unit_upgrade, only: %i[ show edit update destroy ]

  # GET /option_unit_upgrades or /option_unit_upgrades.json
  def index
    @option_unit_upgrades = OptionUnitUpgrade.all
  end

  # GET /option_unit_upgrades/1 or /option_unit_upgrades/1.json
  def show
  end

  # GET /option_unit_upgrades/new
  def new
    @option_unit_upgrade = OptionUnitUpgrade.new
  end

  # GET /option_unit_upgrades/1/edit
  def edit
  end

  # POST /option_unit_upgrades or /option_unit_upgrades.json
  def create
    @option_unit_upgrade = OptionUnitUpgrade.new(option_unit_upgrade_params)

    respond_to do |format|
      if @option_unit_upgrade.save
        format.html { redirect_to option_unit_upgrade_url(@option_unit_upgrade), notice: "Option unit upgrade was successfully created." }
        format.json { render :show, status: :created, location: @option_unit_upgrade }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @option_unit_upgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /option_unit_upgrades/1 or /option_unit_upgrades/1.json
  def update
    respond_to do |format|
      if @option_unit_upgrade.update(option_unit_upgrade_params)
        format.html { redirect_to option_unit_upgrade_url(@option_unit_upgrade), notice: "Option unit upgrade was successfully updated." }
        format.json { render :show, status: :ok, location: @option_unit_upgrade }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @option_unit_upgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /option_unit_upgrades/1 or /option_unit_upgrades/1.json
  def destroy
    @option_unit_upgrade.destroy

    respond_to do |format|
      format.html { redirect_to option_unit_upgrades_url, notice: "Option unit upgrade was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option_unit_upgrade
      @option_unit_upgrade = OptionUnitUpgrade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def option_unit_upgrade_params
      params.require(:option_unit_upgrade).permit(:option, :upgrade)
    end
end
