class OptionTraitRequirementsController < ApplicationController
  before_action :set_option_trait_requirement, only: %i[ show edit update destroy ]

  # GET /option_trait_requirements or /option_trait_requirements.json
  def index
    @option_trait_requirements = OptionTraitRequirement.all
  end

  # GET /option_trait_requirements/1 or /option_trait_requirements/1.json
  def show
  end

  # GET /option_trait_requirements/new
  def new
    @option_trait_requirement = OptionTraitRequirement.new
  end

  # GET /option_trait_requirements/1/edit
  def edit
  end

  # POST /option_trait_requirements or /option_trait_requirements.json
  def create
    @option_trait_requirement = OptionTraitRequirement.new(option_trait_requirement_params)

    respond_to do |format|
      if @option_trait_requirement.save
        format.html { redirect_to option_trait_requirement_url(@option_trait_requirement), notice: "Option trait requirement was successfully created." }
        format.json { render :show, status: :created, location: @option_trait_requirement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @option_trait_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /option_trait_requirements/1 or /option_trait_requirements/1.json
  def update
    respond_to do |format|
      if @option_trait_requirement.update(option_trait_requirement_params)
        format.html { redirect_to option_trait_requirement_url(@option_trait_requirement), notice: "Option trait requirement was successfully updated." }
        format.json { render :show, status: :ok, location: @option_trait_requirement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @option_trait_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /option_trait_requirements/1 or /option_trait_requirements/1.json
  def destroy
    @option_trait_requirement.destroy

    respond_to do |format|
      format.html { redirect_to option_trait_requirements_url, notice: "Option trait requirement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option_trait_requirement
      @option_trait_requirement = OptionTraitRequirement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def option_trait_requirement_params
      params.require(:option_trait_requirement).permit(:option, :requirement)
    end
end
