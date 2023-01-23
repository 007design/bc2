class OptionAttributeUpgradesController < ApplicationController
  before_action :set_option_attribute_upgrade, only: %i[ show edit update destroy ]

  # GET /option_attribute_upgrades or /option_attribute_upgrades.json
  def index
    @option_attribute_upgrades = OptionAttributeUpgrade.all
  end

  # GET /option_attribute_upgrades/1 or /option_attribute_upgrades/1.json
  def show
  end

  # GET /option_attribute_upgrades/new
  def new
    @option_attribute_upgrade = OptionAttributeUpgrade.new
  end

  # GET /option_attribute_upgrades/1/edit
  def edit
  end

  # POST /option_attribute_upgrades or /option_attribute_upgrades.json
  def create
    @option_attribute_upgrade = OptionAttributeUpgrade.new(option_attribute_upgrade_params)

    respond_to do |format|
      if @option_attribute_upgrade.save
        format.html { redirect_to option_attribute_upgrade_url(@option_attribute_upgrade), notice: "Option attribute upgrade was successfully created." }
        format.json { render :show, status: :created, location: @option_attribute_upgrade }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @option_attribute_upgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /option_attribute_upgrades/1 or /option_attribute_upgrades/1.json
  def update
    respond_to do |format|
      if @option_attribute_upgrade.update(option_attribute_upgrade_params)
        format.html { redirect_to option_attribute_upgrade_url(@option_attribute_upgrade), notice: "Option attribute upgrade was successfully updated." }
        format.json { render :show, status: :ok, location: @option_attribute_upgrade }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @option_attribute_upgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /option_attribute_upgrades/1 or /option_attribute_upgrades/1.json
  def destroy
    @option_attribute_upgrade.destroy

    respond_to do |format|
      format.html { redirect_to option_attribute_upgrades_url, notice: "Option attribute upgrade was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option_attribute_upgrade
      @option_attribute_upgrade = OptionAttributeUpgrade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def option_attribute_upgrade_params
      params.require(:option_attribute_upgrade).permit(:option, :upgrade, :value)
    end
end
