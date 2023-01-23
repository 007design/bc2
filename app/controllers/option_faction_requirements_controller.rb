class OptionFactionRequirementsController < ApplicationController
  before_action :set_option_faction_requirement, only: %i[ show edit update destroy ]

  # GET /option_faction_requirements or /option_faction_requirements.json
  def index
    @option_faction_requirements = OptionFactionRequirement.all
  end

  # GET /option_faction_requirements/1 or /option_faction_requirements/1.json
  def show
  end

  # GET /option_faction_requirements/new
  def new
    @option_faction_requirement = OptionFactionRequirement.new
  end

  # GET /option_faction_requirements/1/edit
  def edit
  end

  # POST /option_faction_requirements or /option_faction_requirements.json
  def create
    @option_faction_requirement = OptionFactionRequirement.new(option_faction_requirement_params)

    respond_to do |format|
      if @option_faction_requirement.save
        format.html { redirect_to option_faction_requirement_url(@option_faction_requirement), notice: "Option faction requirement was successfully created." }
        format.json { render :show, status: :created, location: @option_faction_requirement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @option_faction_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /option_faction_requirements/1 or /option_faction_requirements/1.json
  def update
    respond_to do |format|
      if @option_faction_requirement.update(option_faction_requirement_params)
        format.html { redirect_to option_faction_requirement_url(@option_faction_requirement), notice: "Option faction requirement was successfully updated." }
        format.json { render :show, status: :ok, location: @option_faction_requirement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @option_faction_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /option_faction_requirements/1 or /option_faction_requirements/1.json
  def destroy
    @option_faction_requirement.destroy

    respond_to do |format|
      format.html { redirect_to option_faction_requirements_url, notice: "Option faction requirement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option_faction_requirement
      @option_faction_requirement = OptionFactionRequirement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def option_faction_requirement_params
      params.require(:option_faction_requirement).permit(:option, :requirement)
    end
end
