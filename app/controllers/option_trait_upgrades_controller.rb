class OptionTraitUpgradesController < ApplicationController
  before_action :set_option_trait_upgrade, only: %i[ show edit update destroy ]

  # GET /option_trait_upgrades or /option_trait_upgrades.json
  def index
    @option_trait_upgrades = OptionTraitUpgrade.all
  end

  # GET /option_trait_upgrades/1 or /option_trait_upgrades/1.json
  def show
  end

  # GET /option_trait_upgrades/new
  def new
    @option_trait_upgrade = OptionTraitUpgrade.new
  end

  # GET /option_trait_upgrades/1/edit
  def edit
  end

  # POST /option_trait_upgrades or /option_trait_upgrades.json
  def create
    @option_trait_upgrade = OptionTraitUpgrade.new(option_trait_upgrade_params)

    respond_to do |format|
      if @option_trait_upgrade.save
        format.html { redirect_to option_trait_upgrade_url(@option_trait_upgrade), notice: "Option trait upgrade was successfully created." }
        format.json { render :show, status: :created, location: @option_trait_upgrade }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @option_trait_upgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /option_trait_upgrades/1 or /option_trait_upgrades/1.json
  def update
    respond_to do |format|
      if @option_trait_upgrade.update(option_trait_upgrade_params)
        format.html { redirect_to option_trait_upgrade_url(@option_trait_upgrade), notice: "Option trait upgrade was successfully updated." }
        format.json { render :show, status: :ok, location: @option_trait_upgrade }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @option_trait_upgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /option_trait_upgrades/1 or /option_trait_upgrades/1.json
  def destroy
    @option_trait_upgrade.destroy

    respond_to do |format|
      format.html { redirect_to option_trait_upgrades_url, notice: "Option trait upgrade was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option_trait_upgrade
      @option_trait_upgrade = OptionTraitUpgrade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def option_trait_upgrade_params
      params.require(:option_trait_upgrade).permit(:option, :upgrade, :value)
    end
end
