class EnviesController < ApplicationController
  before_action :set_envy, only: [:show, :edit, :update, :destroy]

  # GET /envies
  # GET /envies.json
  def index
    @envies = Envie.all
  end

  # GET /envies/1
  # GET /envies/1.json
  def show
  end

  # GET /envies/new
  def new
    @envy = Envie.new
  end

  # GET /envies/1/edit
  def edit
  end

  # POST /envies
  # POST /envies.json
  def create
    @envy = Envie.new(envy_params)

    respond_to do |format|
      if @envy.save
        format.html { redirect_to @envy, notice: 'Envie was successfully created.' }
        format.json { render :show, status: :created, location: @envy }
      else
        format.html { render :new }
        format.json { render json: @envy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /envies/1
  # PATCH/PUT /envies/1.json
  def update
    respond_to do |format|
      if @envy.update(envy_params)
        format.html { redirect_to @envy, notice: 'Envie was successfully updated.' }
        format.json { render :show, status: :ok, location: @envy }
      else
        format.html { render :edit }
        format.json { render json: @envy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /envies/1
  # DELETE /envies/1.json
  def destroy
    @envy.destroy
    respond_to do |format|
      format.html { redirect_to envies_url, notice: 'Envie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_envy
      @envy = Envie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def envy_params
      params.require(:envy).permit(:name, :emotion_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data, :cas_number, :states, :attitudes, :affection, :drug, :side_effects, :causes, :psychology, :theroy)
    end
end
