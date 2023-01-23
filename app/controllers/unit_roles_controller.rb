class UnitRolesController < ApplicationController
  before_action :set_unit_role, only: %i[ show edit update destroy ]

  # GET /unit_roles or /unit_roles.json
  def index
    @unit_roles = UnitRole.all
  end

  # GET /unit_roles/1 or /unit_roles/1.json
  def show
  end

  # GET /unit_roles/new
  def new
    @unit_role = UnitRole.new
  end

  # GET /unit_roles/1/edit
  def edit
  end

  # POST /unit_roles or /unit_roles.json
  def create
    @unit_role = UnitRole.new(unit_role_params)

    respond_to do |format|
      if @unit_role.save
        format.html { redirect_to unit_role_url(@unit_role), notice: "Unit role was successfully created." }
        format.json { render :show, status: :created, location: @unit_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @unit_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unit_roles/1 or /unit_roles/1.json
  def update
    respond_to do |format|
      if @unit_role.update(unit_role_params)
        format.html { redirect_to unit_role_url(@unit_role), notice: "Unit role was successfully updated." }
        format.json { render :show, status: :ok, location: @unit_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @unit_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_roles/1 or /unit_roles/1.json
  def destroy
    @unit_role.destroy

    respond_to do |format|
      format.html { redirect_to unit_roles_url, notice: "Unit role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_role
      @unit_role = UnitRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unit_role_params
      params.require(:unit_role).permit(:unit, :role)
    end
end
