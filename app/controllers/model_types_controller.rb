class ModelTypesController < ApplicationController
  before_action :set_model_type, only: %i[ show edit update destroy ]

  # GET /model_types or /model_types.json
  def index
    @model_types = ModelType.all
  end

  # GET /model_types/1 or /model_types/1.json
  def show
  end

  # GET /model_types/new
  def new
    @model_type = ModelType.new
  end

  # GET /model_types/1/edit
  def edit
  end

  # POST /model_types or /model_types.json
  def create
    @model_type = ModelType.new(model_type_params)

    respond_to do |format|
      if @model_type.save
        format.html { redirect_to model_type_url(@model_type), notice: "Model type was successfully created." }
        format.json { render :show, status: :created, location: @model_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @model_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /model_types/1 or /model_types/1.json
  def update
    respond_to do |format|
      if @model_type.update(model_type_params)
        format.html { redirect_to model_type_url(@model_type), notice: "Model type was successfully updated." }
        format.json { render :show, status: :ok, location: @model_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @model_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /model_types/1 or /model_types/1.json
  def destroy
    @model_type.destroy

    respond_to do |format|
      format.html { redirect_to model_types_url, notice: "Model type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model_type
      @model_type = ModelType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def model_type_params
      params.require(:model_type).permit(:name)
    end
end
