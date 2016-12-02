class ButylonesController < ApplicationController
  before_action :set_butylone, only: [:show, :edit, :update, :destroy]

  # GET /butylones
  # GET /butylones.json
  def index
    @butylones = Butylone.all
  end

  # GET /butylones/1
  # GET /butylones/1.json
  def show
  end

  # GET /butylones/new
  def new
    @butylone = Butylone.new
  end

  # GET /butylones/1/edit
  def edit
  end

  # POST /butylones
  # POST /butylones.json
  def create
    @butylone = Butylone.new(butylone_params)

    respond_to do |format|
      if @butylone.save
        format.html { redirect_to @butylone, notice: 'Butylone was successfully created.' }
        format.json { render :show, status: :created, location: @butylone }
      else
        format.html { render :new }
        format.json { render json: @butylone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /butylones/1
  # PATCH/PUT /butylones/1.json
  def update
    respond_to do |format|
      if @butylone.update(butylone_params)
        format.html { redirect_to @butylone, notice: 'Butylone was successfully updated.' }
        format.json { render :show, status: :ok, location: @butylone }
      else
        format.html { render :edit }
        format.json { render json: @butylone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /butylones/1
  # DELETE /butylones/1.json
  def destroy
    @butylone.destroy
    respond_to do |format|
      format.html { redirect_to butylones_url, notice: 'Butylone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_butylone
      @butylone = Butylone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def butylone_params
      params.require(:butylone).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data, :cas_number, :side_effects)
    end
end
