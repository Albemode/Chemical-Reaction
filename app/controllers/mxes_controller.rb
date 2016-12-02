class MxesController < ApplicationController
  before_action :set_mx, only: [:show, :edit, :update, :destroy]

  # GET /mxes
  # GET /mxes.json
  def index
    @mxes = Mxe.all
  end

  # GET /mxes/1
  # GET /mxes/1.json
  def show
  end

  # GET /mxes/new
  def new
    @mx = Mxe.new
  end

  # GET /mxes/1/edit
  def edit
  end

  # POST /mxes
  # POST /mxes.json
  def create
    @mx = Mxe.new(mx_params)

    respond_to do |format|
      if @mx.save
        format.html { redirect_to @mx, notice: 'Mxe was successfully created.' }
        format.json { render :show, status: :created, location: @mx }
      else
        format.html { render :new }
        format.json { render json: @mx.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mxes/1
  # PATCH/PUT /mxes/1.json
  def update
    respond_to do |format|
      if @mx.update(mx_params)
        format.html { redirect_to @mx, notice: 'Mxe was successfully updated.' }
        format.json { render :show, status: :ok, location: @mx }
      else
        format.html { render :edit }
        format.json { render json: @mx.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mxes/1
  # DELETE /mxes/1.json
  def destroy
    @mx.destroy
    respond_to do |format|
      format.html { redirect_to mxes_url, notice: 'Mxe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mx
      @mx = Mxe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mxe_params
      params.require(:mxe).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data, :cas_number, :side_effects)
    end
end
