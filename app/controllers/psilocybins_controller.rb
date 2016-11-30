class PsilocybinsController < ApplicationController
  before_action :set_psilocybin, only: [:show, :edit, :update, :destroy]

  # GET /psilocybins
  # GET /psilocybins.json
  def index
    @psilocybins = Psilocybin.all
  end

  # GET /psilocybins/1
  # GET /psilocybins/1.json
  def show
  end

  # GET /psilocybins/new
  def new
    @psilocybin = Psilocybin.new
  end

  # GET /psilocybins/1/edit
  def edit
  end

  # POST /psilocybins
  # POST /psilocybins.json
  def create
    @psilocybin = Psilocybin.new(psilocybin_params)

    respond_to do |format|
      if @psilocybin.save
        format.html { redirect_to @psilocybin, notice: 'Psilocybin was successfully created.' }
        format.json { render :show, status: :created, location: @psilocybin }
      else
        format.html { render :new }
        format.json { render json: @psilocybin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /psilocybins/1
  # PATCH/PUT /psilocybins/1.json
  def update
    respond_to do |format|
      if @psilocybin.update(psilocybin_params)
        format.html { redirect_to @psilocybin, notice: 'Psilocybin was successfully updated.' }
        format.json { render :show, status: :ok, location: @psilocybin }
      else
        format.html { render :edit }
        format.json { render json: @psilocybin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /psilocybins/1
  # DELETE /psilocybins/1.json
  def destroy
    @psilocybin.destroy
    respond_to do |format|
      format.html { redirect_to psilocybins_url, notice: 'Psilocybin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_psilocybin
      @psilocybin = Psilocybin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def psilocybin_params
      params.fetch(:psilocybin, {})
    end
end
