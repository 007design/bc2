class OptionWeaponRequirementsController < ApplicationController
  before_action :set_option_weapon_requirement, only: %i[ show edit update destroy ]

  # GET /option_weapon_requirements or /option_weapon_requirements.json
  def index
    @option_weapon_requirements = OptionWeaponRequirement.all
  end

  # GET /option_weapon_requirements/1 or /option_weapon_requirements/1.json
  def show
  end

  # GET /option_weapon_requirements/new
  def new
    @option_weapon_requirement = OptionWeaponRequirement.new
  end

  # GET /option_weapon_requirements/1/edit
  def edit
  end

  # POST /option_weapon_requirements or /option_weapon_requirements.json
  def create
    @option_weapon_requirement = OptionWeaponRequirement.new(option_weapon_requirement_params)

    respond_to do |format|
      if @option_weapon_requirement.save
        format.html { redirect_to option_weapon_requirement_url(@option_weapon_requirement), notice: "Option weapon requirement was successfully created." }
        format.json { render :show, status: :created, location: @option_weapon_requirement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @option_weapon_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /option_weapon_requirements/1 or /option_weapon_requirements/1.json
  def update
    respond_to do |format|
      if @option_weapon_requirement.update(option_weapon_requirement_params)
        format.html { redirect_to option_weapon_requirement_url(@option_weapon_requirement), notice: "Option weapon requirement was successfully updated." }
        format.json { render :show, status: :ok, location: @option_weapon_requirement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @option_weapon_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /option_weapon_requirements/1 or /option_weapon_requirements/1.json
  def destroy
    @option_weapon_requirement.destroy

    respond_to do |format|
      format.html { redirect_to option_weapon_requirements_url, notice: "Option weapon requirement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option_weapon_requirement
      @option_weapon_requirement = OptionWeaponRequirement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def option_weapon_requirement_params
      params.require(:option_weapon_requirement).permit(:option, :requirement)
    end
end
