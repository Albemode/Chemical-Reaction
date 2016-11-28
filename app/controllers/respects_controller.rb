class RespectsController < ApplicationController
  before_action :set_respect, only: [:show, :edit, :update, :destroy]

  # GET /respects
  # GET /respects.json
  def index
    @respects = Respect.all
  end

  # GET /respects/1
  # GET /respects/1.json
  def show
  end

  # GET /respects/new
  def new
    @respect = Respect.new
  end

  # GET /respects/1/edit
  def edit
  end

  # POST /respects
  # POST /respects.json
  def create
    @respect = Respect.new(respect_params)

    respond_to do |format|
      if @respect.save
        format.html { redirect_to @respect, notice: 'Respect was successfully created.' }
        format.json { render :show, status: :created, location: @respect }
      else
        format.html { render :new }
        format.json { render json: @respect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /respects/1
  # PATCH/PUT /respects/1.json
  def update
    respond_to do |format|
      if @respect.update(respect_params)
        format.html { redirect_to @respect, notice: 'Respect was successfully updated.' }
        format.json { render :show, status: :ok, location: @respect }
      else
        format.html { render :edit }
        format.json { render json: @respect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /respects/1
  # DELETE /respects/1.json
  def destroy
    @respect.destroy
    respond_to do |format|
      format.html { redirect_to respects_url, notice: 'Respect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_respect
      @respect = Respect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def respect_params
      params.require(:respect).permit(:name, :emotion_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data, :cas_number, :states, :attitudes, :affection, :drug, :side_effects, :causes, :psychology, :theroy)
    end
end
