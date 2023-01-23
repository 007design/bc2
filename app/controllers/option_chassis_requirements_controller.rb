class OptionChassisRequirementsController < ApplicationController
  before_action :set_option_chassis_requirement, only: %i[ show edit update destroy ]

  # GET /option_chassis_requirements or /option_chassis_requirements.json
  def index
    @option_chassis_requirements = OptionChassisRequirement.all
  end

  # GET /option_chassis_requirements/1 or /option_chassis_requirements/1.json
  def show
  end

  # GET /option_chassis_requirements/new
  def new
    @option_chassis_requirement = OptionChassisRequirement.new
  end

  # GET /option_chassis_requirements/1/edit
  def edit
  end

  # POST /option_chassis_requirements or /option_chassis_requirements.json
  def create
    @option_chassis_requirement = OptionChassisRequirement.new(option_chassis_requirement_params)

    respond_to do |format|
      if @option_chassis_requirement.save
        format.html { redirect_to option_chassis_requirement_url(@option_chassis_requirement), notice: "Option chassis requirement was successfully created." }
        format.json { render :show, status: :created, location: @option_chassis_requirement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @option_chassis_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /option_chassis_requirements/1 or /option_chassis_requirements/1.json
  def update
    respond_to do |format|
      if @option_chassis_requirement.update(option_chassis_requirement_params)
        format.html { redirect_to option_chassis_requirement_url(@option_chassis_requirement), notice: "Option chassis requirement was successfully updated." }
        format.json { render :show, status: :ok, location: @option_chassis_requirement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @option_chassis_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /option_chassis_requirements/1 or /option_chassis_requirements/1.json
  def destroy
    @option_chassis_requirement.destroy

    respond_to do |format|
      format.html { redirect_to option_chassis_requirements_url, notice: "Option chassis requirement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option_chassis_requirement
      @option_chassis_requirement = OptionChassisRequirement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def option_chassis_requirement_params
      params.require(:option_chassis_requirement).permit(:option, :requirement)
    end
end
