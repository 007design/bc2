class OptionRoleRequirementsController < ApplicationController
  before_action :set_option_role_requirement, only: %i[ show edit update destroy ]

  # GET /option_role_requirements or /option_role_requirements.json
  def index
    @option_role_requirements = OptionRoleRequirement.all
  end

  # GET /option_role_requirements/1 or /option_role_requirements/1.json
  def show
  end

  # GET /option_role_requirements/new
  def new
    @option_role_requirement = OptionRoleRequirement.new
  end

  # GET /option_role_requirements/1/edit
  def edit
  end

  # POST /option_role_requirements or /option_role_requirements.json
  def create
    @option_role_requirement = OptionRoleRequirement.new(option_role_requirement_params)

    respond_to do |format|
      if @option_role_requirement.save
        format.html { redirect_to option_role_requirement_url(@option_role_requirement), notice: "Option role requirement was successfully created." }
        format.json { render :show, status: :created, location: @option_role_requirement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @option_role_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /option_role_requirements/1 or /option_role_requirements/1.json
  def update
    respond_to do |format|
      if @option_role_requirement.update(option_role_requirement_params)
        format.html { redirect_to option_role_requirement_url(@option_role_requirement), notice: "Option role requirement was successfully updated." }
        format.json { render :show, status: :ok, location: @option_role_requirement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @option_role_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /option_role_requirements/1 or /option_role_requirements/1.json
  def destroy
    @option_role_requirement.destroy

    respond_to do |format|
      format.html { redirect_to option_role_requirements_url, notice: "Option role requirement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option_role_requirement
      @option_role_requirement = OptionRoleRequirement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def option_role_requirement_params
      params.require(:option_role_requirement).permit(:option, :requirement, :min, :max)
    end
end
