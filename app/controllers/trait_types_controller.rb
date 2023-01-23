class TraitTypesController < ApplicationController
  before_action :set_trait_type, only: %i[ show edit update destroy ]

  # GET /trait_types or /trait_types.json
  def index
    @trait_types = TraitType.all
  end

  # GET /trait_types/1 or /trait_types/1.json
  def show
  end

  # GET /trait_types/new
  def new
    @trait_type = TraitType.new
  end

  # GET /trait_types/1/edit
  def edit
  end

  # POST /trait_types or /trait_types.json
  def create
    @trait_type = TraitType.new(trait_type_params)

    respond_to do |format|
      if @trait_type.save
        format.html { redirect_to trait_type_url(@trait_type), notice: "Trait type was successfully created." }
        format.json { render :show, status: :created, location: @trait_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trait_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trait_types/1 or /trait_types/1.json
  def update
    respond_to do |format|
      if @trait_type.update(trait_type_params)
        format.html { redirect_to trait_type_url(@trait_type), notice: "Trait type was successfully updated." }
        format.json { render :show, status: :ok, location: @trait_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trait_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trait_types/1 or /trait_types/1.json
  def destroy
    @trait_type.destroy

    respond_to do |format|
      format.html { redirect_to trait_types_url, notice: "Trait type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trait_type
      @trait_type = TraitType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trait_type_params
      params.require(:trait_type).permit(:type)
    end
end
