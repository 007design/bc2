class OptionSublistRequirementsController < ApplicationController
  before_action :set_option_sublist_requirement, only: %i[ show edit update destroy ]

  # GET /option_sublist_requirements or /option_sublist_requirements.json
  def index
    @option_sublist_requirements = OptionSublistRequirement.all
  end

  # GET /option_sublist_requirements/1 or /option_sublist_requirements/1.json
  def show
  end

  # GET /option_sublist_requirements/new
  def new
    @option_sublist_requirement = OptionSublistRequirement.new
  end

  # GET /option_sublist_requirements/1/edit
  def edit
  end

  # POST /option_sublist_requirements or /option_sublist_requirements.json
  def create
    @option_sublist_requirement = OptionSublistRequirement.new(option_sublist_requirement_params)

    respond_to do |format|
      if @option_sublist_requirement.save
        format.html { redirect_to option_sublist_requirement_url(@option_sublist_requirement), notice: "Option sublist requirement was successfully created." }
        format.json { render :show, status: :created, location: @option_sublist_requirement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @option_sublist_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /option_sublist_requirements/1 or /option_sublist_requirements/1.json
  def update
    respond_to do |format|
      if @option_sublist_requirement.update(option_sublist_requirement_params)
        format.html { redirect_to option_sublist_requirement_url(@option_sublist_requirement), notice: "Option sublist requirement was successfully updated." }
        format.json { render :show, status: :ok, location: @option_sublist_requirement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @option_sublist_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /option_sublist_requirements/1 or /option_sublist_requirements/1.json
  def destroy
    @option_sublist_requirement.destroy

    respond_to do |format|
      format.html { redirect_to option_sublist_requirements_url, notice: "Option sublist requirement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option_sublist_requirement
      @option_sublist_requirement = OptionSublistRequirement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def option_sublist_requirement_params
      params.require(:option_sublist_requirement).permit(:option, :requirement, :min, :max)
    end
end
