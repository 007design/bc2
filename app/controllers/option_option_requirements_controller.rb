class OptionOptionRequirementsController < ApplicationController
  before_action :set_option_option_requirement, only: %i[ show edit update destroy ]

  # GET /option_option_requirements or /option_option_requirements.json
  def index
    @option_option_requirements = OptionOptionRequirement.all
  end

  # GET /option_option_requirements/1 or /option_option_requirements/1.json
  def show
  end

  # GET /option_option_requirements/new
  def new
    @option_option_requirement = OptionOptionRequirement.new
  end

  # GET /option_option_requirements/1/edit
  def edit
  end

  # POST /option_option_requirements or /option_option_requirements.json
  def create
    @option_option_requirement = OptionOptionRequirement.new(option_option_requirement_params)

    respond_to do |format|
      if @option_option_requirement.save
        format.html { redirect_to option_option_requirement_url(@option_option_requirement), notice: "Option option requirement was successfully created." }
        format.json { render :show, status: :created, location: @option_option_requirement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @option_option_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /option_option_requirements/1 or /option_option_requirements/1.json
  def update
    respond_to do |format|
      if @option_option_requirement.update(option_option_requirement_params)
        format.html { redirect_to option_option_requirement_url(@option_option_requirement), notice: "Option option requirement was successfully updated." }
        format.json { render :show, status: :ok, location: @option_option_requirement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @option_option_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /option_option_requirements/1 or /option_option_requirements/1.json
  def destroy
    @option_option_requirement.destroy

    respond_to do |format|
      format.html { redirect_to option_option_requirements_url, notice: "Option option requirement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option_option_requirement
      @option_option_requirement = OptionOptionRequirement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def option_option_requirement_params
      params.require(:option_option_requirement).permit(:option, :requirement, :min, :max)
    end
end
