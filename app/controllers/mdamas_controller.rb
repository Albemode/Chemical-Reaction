class MdamasController < ApplicationController
  before_action :set_mdama, only: [:show, :edit, :update, :destroy]

  # GET /mdamas
  # GET /mdamas.json
  def index
    @mdamas = Mdama.all
  end

  # GET /mdamas/1
  # GET /mdamas/1.json
  def show
  end

  # GET /mdamas/new
  def new
    @mdama = Mdama.new
  end

  # GET /mdamas/1/edit
  def edit
  end

  # POST /mdamas
  # POST /mdamas.json
  def create
    @mdama = Mdama.new(mdama_params)

    respond_to do |format|
      if @mdama.save
        format.html { redirect_to @mdama, notice: 'Mdama was successfully created.' }
        format.json { render :show, status: :created, location: @mdama }
      else
        format.html { render :new }
        format.json { render json: @mdama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mdamas/1
  # PATCH/PUT /mdamas/1.json
  def update
    respond_to do |format|
      if @mdama.update(mdama_params)
        format.html { redirect_to @mdama, notice: 'Mdama was successfully updated.' }
        format.json { render :show, status: :ok, location: @mdama }
      else
        format.html { render :edit }
        format.json { render json: @mdama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mdamas/1
  # DELETE /mdamas/1.json
  def destroy
    @mdama.destroy
    respond_to do |format|
      format.html { redirect_to mdamas_url, notice: 'Mdama was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mdama
      @mdama = Mdama.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mdama_params
      params.require(:mdama).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data, :cas_number, :side_effects)
    end
end
