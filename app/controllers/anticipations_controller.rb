class AnticipationsController < ApplicationController
  before_action :set_anticipation, only: [:show, :edit, :update, :destroy]

  # GET /anticipations
  # GET /anticipations.json
  def index
    @anticipations = Anticipation.all
  end

  # GET /anticipations/1
  # GET /anticipations/1.json
  def show
  end

  # GET /anticipations/new
  def new
    @anticipation = Anticipation.new
  end

  # GET /anticipations/1/edit
  def edit
  end

  # POST /anticipations
  # POST /anticipations.json
  def create
    @anticipation = Anticipation.new(anticipation_params)

    respond_to do |format|
      if @anticipation.save
        format.html { redirect_to @anticipation, notice: 'Anticipation was successfully created.' }
        format.json { render :show, status: :created, location: @anticipation }
      else
        format.html { render :new }
        format.json { render json: @anticipation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anticipations/1
  # PATCH/PUT /anticipations/1.json
  def update
    respond_to do |format|
      if @anticipation.update(anticipation_params)
        format.html { redirect_to @anticipation, notice: 'Anticipation was successfully updated.' }
        format.json { render :show, status: :ok, location: @anticipation }
      else
        format.html { render :edit }
        format.json { render json: @anticipation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anticipations/1
  # DELETE /anticipations/1.json
  def destroy
    @anticipation.destroy
    respond_to do |format|
      format.html { redirect_to anticipations_url, notice: 'Anticipation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anticipation
      @anticipation = Anticipation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anticipation_params
      params.require(:anticipation).permit(:name, :emotion_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data, :cas_number, :states, :attitudes, :affection, :drug, :side_effects, :causes, :psychology, :theroy)
    end
end
