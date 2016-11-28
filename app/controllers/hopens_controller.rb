class HopensController < ApplicationController
  before_action :set_hopen, only: [:show, :edit, :update, :destroy]

  # GET /hopens
  # GET /hopens.json
  def index
    @hopens = Hopen.all
  end

  # GET /hopens/1
  # GET /hopens/1.json
  def show
  end

  # GET /hopens/new
  def new
    @hopen = Hopen.new
  end

  # GET /hopens/1/edit
  def edit
  end

  # POST /hopens
  # POST /hopens.json
  def create
    @hopen = Hopen.new(hopen_params)

    respond_to do |format|
      if @hopen.save
        format.html { redirect_to @hopen, notice: 'Hopen was successfully created.' }
        format.json { render :show, status: :created, location: @hopen }
      else
        format.html { render :new }
        format.json { render json: @hopen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hopens/1
  # PATCH/PUT /hopens/1.json
  def update
    respond_to do |format|
      if @hopen.update(hopen_params)
        format.html { redirect_to @hopen, notice: 'Hopen was successfully updated.' }
        format.json { render :show, status: :ok, location: @hopen }
      else
        format.html { render :edit }
        format.json { render json: @hopen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hopens/1
  # DELETE /hopens/1.json
  def destroy
    @hopen.destroy
    respond_to do |format|
      format.html { redirect_to hopens_url, notice: 'Hopen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hopen
      @hopen = Hopen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hopen_params
      params.fetch(:hopen, {})
    end
end
