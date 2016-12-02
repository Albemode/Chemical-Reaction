class DmtsController < ApplicationController
  before_action :set_dmt, only: [:show, :edit, :update, :destroy]

  # GET /dmts
  # GET /dmts.json
  def index
    @dmts = Dmt.all
  end

  # GET /dmts/1
  # GET /dmts/1.json
  def show
  end

  # GET /dmts/new
  def new
    @dmt = Dmt.new
  end

  # GET /dmts/1/edit
  def edit
  end

  # POST /dmts
  # POST /dmts.json
  def create
    @dmt = Dmt.new(dmt_params)

    respond_to do |format|
      if @dmt.save
        format.html { redirect_to @dmt, notice: 'Dmt was successfully created.' }
        format.json { render :show, status: :created, location: @dmt }
      else
        format.html { render :new }
        format.json { render json: @dmt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dmts/1
  # PATCH/PUT /dmts/1.json
  def update
    respond_to do |format|
      if @dmt.update(dmt_params)
        format.html { redirect_to @dmt, notice: 'Dmt was successfully updated.' }
        format.json { render :show, status: :ok, location: @dmt }
      else
        format.html { render :edit }
        format.json { render json: @dmt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dmts/1
  # DELETE /dmts/1.json
  def destroy
    @dmt.destroy
    respond_to do |format|
      format.html { redirect_to dmts_url, notice: 'Dmt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dmt
      @dmt = Dmt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dmt_params
      params.require(:dmt).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data, :cas_number, :side_effects)
    end
end
