class RigsController < ApplicationController
  before_action :set_rig, only: %i[ show edit update destroy ]

  # GET /rigs or /rigs.json
  def index
    @rigs = Rig.all
  end

  # GET /rigs/1 or /rigs/1.json
  def show
  end

  # GET /rigs/new
  def new
    @rig = Rig.new
  end

  # GET /rigs/1/edit
  def edit
  end

  # POST /rigs or /rigs.json
  def create
    @rig = Rig.new(rig_params)

    respond_to do |format|
      if @rig.save
        format.html { redirect_to @rig, notice: "Rig was successfully created." }
        format.json { render :show, status: :created, location: @rig }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rig.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rigs/1 or /rigs/1.json
  def update
    respond_to do |format|
      if @rig.update(rig_params)
        format.html { redirect_to @rig, notice: "Rig was successfully updated." }
        format.json { render :show, status: :ok, location: @rig }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rig.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rigs/1 or /rigs/1.json
  def destroy
    @rig.destroy
    respond_to do |format|
      format.html { redirect_to rigs_url, notice: "Rig was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rig
      @rig = Rig.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rig_params
      params.require(:rig).permit(:name, :description, :image)
    end
end
