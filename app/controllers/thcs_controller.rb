class ThcsController < ApplicationController
  before_action :set_thc, only: [:show, :edit, :update, :destroy]

  # GET /thcs
  # GET /thcs.json
  def index
    @thcs = Thc.all
  end

  # GET /thcs/1
  # GET /thcs/1.json
  def show
  end

  # GET /thcs/new
  def new
    @thc = Thc.new
  end

  # GET /thcs/1/edit
  def edit
  end

  # POST /thcs
  # POST /thcs.json
  def create
    @thc = Thc.new(thc_params)

    respond_to do |format|
      if @thc.save
        format.html { redirect_to @thc, notice: 'Thc was successfully created.' }
        format.json { render :show, status: :created, location: @thc }
      else
        format.html { render :new }
        format.json { render json: @thc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thcs/1
  # PATCH/PUT /thcs/1.json
  def update
    respond_to do |format|
      if @thc.update(thc_params)
        format.html { redirect_to @thc, notice: 'Thc was successfully updated.' }
        format.json { render :show, status: :ok, location: @thc }
      else
        format.html { render :edit }
        format.json { render json: @thc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thcs/1
  # DELETE /thcs/1.json
  def destroy
    @thc.destroy
    respond_to do |format|
      format.html { redirect_to thcs_url, notice: 'Thc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thc
      @thc = Thc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thc_params
      params.fetch(:thc, {})
    end
end
