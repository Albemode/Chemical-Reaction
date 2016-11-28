class SurprisesController < ApplicationController
  before_action :set_surprise, only: [:show, :edit, :update, :destroy]

  # GET /surprises
  # GET /surprises.json
  def index
    @surprises = Surprise.all
  end

  # GET /surprises/1
  # GET /surprises/1.json
  def show
  end

  # GET /surprises/new
  def new
    @surprise = Surprise.new
  end

  # GET /surprises/1/edit
  def edit
  end

  # POST /surprises
  # POST /surprises.json
  def create
    @surprise = Surprise.new(surprise_params)

    respond_to do |format|
      if @surprise.save
        format.html { redirect_to @surprise, notice: 'Surprise was successfully created.' }
        format.json { render :show, status: :created, location: @surprise }
      else
        format.html { render :new }
        format.json { render json: @surprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surprises/1
  # PATCH/PUT /surprises/1.json
  def update
    respond_to do |format|
      if @surprise.update(surprise_params)
        format.html { redirect_to @surprise, notice: 'Surprise was successfully updated.' }
        format.json { render :show, status: :ok, location: @surprise }
      else
        format.html { render :edit }
        format.json { render json: @surprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surprises/1
  # DELETE /surprises/1.json
  def destroy
    @surprise.destroy
    respond_to do |format|
      format.html { redirect_to surprises_url, notice: 'Surprise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surprise
      @surprise = Surprise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surprise_params
      params.require(:surprise).permit(:name, :emotion_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data, :cas_number, :states, :attitudes, :affection, :drug, :side_effects, :causes, :psychology, :theroy, :construction, :physiological_responses, :familiarity)
    end
end
