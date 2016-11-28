class SaddnessesController < ApplicationController
  before_action :set_saddness, only: [:show, :edit, :update, :destroy]

  # GET /saddnesses
  # GET /saddnesses.json
  def index
    @saddnesses = Saddness.all
  end

  # GET /saddnesses/1
  # GET /saddnesses/1.json
  def show
  end

  # GET /saddnesses/new
  def new
    @saddness = Saddness.new
  end

  # GET /saddnesses/1/edit
  def edit
  end

  # POST /saddnesses
  # POST /saddnesses.json
  def create
    @saddness = Saddness.new(saddness_params)

    respond_to do |format|
      if @saddness.save
        format.html { redirect_to @saddness, notice: 'Saddness was successfully created.' }
        format.json { render :show, status: :created, location: @saddness }
      else
        format.html { render :new }
        format.json { render json: @saddness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saddnesses/1
  # PATCH/PUT /saddnesses/1.json
  def update
    respond_to do |format|
      if @saddness.update(saddness_params)
        format.html { redirect_to @saddness, notice: 'Saddness was successfully updated.' }
        format.json { render :show, status: :ok, location: @saddness }
      else
        format.html { render :edit }
        format.json { render json: @saddness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saddnesses/1
  # DELETE /saddnesses/1.json
  def destroy
    @saddness.destroy
    respond_to do |format|
      format.html { redirect_to saddnesses_url, notice: 'Saddness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saddness
      @saddness = Saddness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saddness_params
      params.require(:saddness).permit(:name, :emotion_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data, :cas_number, :states, :attitudes, :affection, :drug, :side_effects, :causes, :psychology, :theroy)
    end
end
