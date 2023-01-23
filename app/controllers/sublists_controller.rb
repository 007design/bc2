class SublistsController < ApplicationController
  before_action :set_sublist, only: %i[ show edit update destroy ]

  # GET /sublists or /sublists.json
  def index
    @sublists = Sublist.all
  end

  # GET /sublists/1 or /sublists/1.json
  def show
  end

  # GET /sublists/new
  def new
    @sublist = Sublist.new
  end

  # GET /sublists/1/edit
  def edit
  end

  # POST /sublists or /sublists.json
  def create
    @sublist = Sublist.new(sublist_params)

    respond_to do |format|
      if @sublist.save
        format.html { redirect_to sublist_url(@sublist), notice: "Sublist was successfully created." }
        format.json { render :show, status: :created, location: @sublist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sublist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sublists/1 or /sublists/1.json
  def update
    respond_to do |format|
      if @sublist.update(sublist_params)
        format.html { redirect_to sublist_url(@sublist), notice: "Sublist was successfully updated." }
        format.json { render :show, status: :ok, location: @sublist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sublist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sublists/1 or /sublists/1.json
  def destroy
    @sublist.destroy

    respond_to do |format|
      format.html { redirect_to sublists_url, notice: "Sublist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sublist
      @sublist = Sublist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sublist_params
      params.require(:sublist).permit(:name, :faction)
    end
end
