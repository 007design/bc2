class UnitAttributesController < ApplicationController
  before_action :set_unit_attribute, only: %i[ show edit update destroy ]

  # GET /unit_attributes or /unit_attributes.json
  def index
    @unit_attributes = UnitAttribute.all
  end

  # GET /unit_attributes/1 or /unit_attributes/1.json
  def show
  end

  # GET /unit_attributes/new
  def new
    @unit_attribute = UnitAttribute.new
  end

  # GET /unit_attributes/1/edit
  def edit
  end

  # POST /unit_attributes or /unit_attributes.json
  def create
    @unit_attribute = UnitAttribute.new(unit_attribute_params)

    respond_to do |format|
      if @unit_attribute.save
        format.html { redirect_to unit_attribute_url(@unit_attribute), notice: "Unit attribute was successfully created." }
        format.json { render :show, status: :created, location: @unit_attribute }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @unit_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unit_attributes/1 or /unit_attributes/1.json
  def update
    respond_to do |format|
      if @unit_attribute.update(unit_attribute_params)
        format.html { redirect_to unit_attribute_url(@unit_attribute), notice: "Unit attribute was successfully updated." }
        format.json { render :show, status: :ok, location: @unit_attribute }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @unit_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_attributes/1 or /unit_attributes/1.json
  def destroy
    @unit_attribute.destroy

    respond_to do |format|
      format.html { redirect_to unit_attributes_url, notice: "Unit attribute was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_attribute
      @unit_attribute = UnitAttribute.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def unit_attribute_params
      params.require(:unit_attribute).permit(:unit, :attribute_type, :value)
    end
end
