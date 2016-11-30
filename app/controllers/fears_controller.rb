class FearsController < ApplicationController
  before_action :set_fear, only: [:show, :edit, :update, :destroy]

  # GET /fears
  # GET /fears.json
  def index
    @fears = Fear.all
  end

  # GET /fears/1
  # GET /fears/1.json
  def show
  end

  # GET /fears/new
  def new
    @fear = Fear.new
  end

  # GET /fears/1/edit
  def edit
  end

  # POST /fears
  # POST /fears.json
  def create
    @fear = Fear.new(fear_params)

    respond_to do |format|
      if @fear.save
        format.html { redirect_to @fear, notice: 'Fear was successfully created.' }
        format.json { render :show, status: :created, location: @fear }
      else
        format.html { render :new }
        format.json { render json: @fear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fears/1
  # PATCH/PUT /fears/1.json
  def update
    respond_to do |format|
      if @fear.update(fear_params)
        format.html { redirect_to @fear, notice: 'Fear was successfully updated.' }
        format.json { render :show, status: :ok, location: @fear }
      else
        format.html { render :edit }
        format.json { render json: @fear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fears/1
  # DELETE /fears/1.json
  def destroy
    @fear.destroy
    respond_to do |format|
      format.html { redirect_to fears_url, notice: 'Fear was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fear
      @fear = Fear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fear_params
      params.fetch(:fear, {})
    end
end
