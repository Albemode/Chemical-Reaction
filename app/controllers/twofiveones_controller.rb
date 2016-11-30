class TwofiveonesController < ApplicationController
  before_action :set_twofiveone, only: [:show, :edit, :update, :destroy]

  # GET /twofiveones
  # GET /twofiveones.json
  def index
    @twofiveones = Twofiveone.all
  end

  # GET /twofiveones/1
  # GET /twofiveones/1.json
  def show
  end

  # GET /twofiveones/new
  def new
    @twofiveone = Twofiveone.new
  end

  # GET /twofiveones/1/edit
  def edit
  end

  # POST /twofiveones
  # POST /twofiveones.json
  def create
    @twofiveone = Twofiveone.new(twofiveone_params)

    respond_to do |format|
      if @twofiveone.save
        format.html { redirect_to @twofiveone, notice: 'Twofiveone was successfully created.' }
        format.json { render :show, status: :created, location: @twofiveone }
      else
        format.html { render :new }
        format.json { render json: @twofiveone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twofiveones/1
  # PATCH/PUT /twofiveones/1.json
  def update
    respond_to do |format|
      if @twofiveone.update(twofiveone_params)
        format.html { redirect_to @twofiveone, notice: 'Twofiveone was successfully updated.' }
        format.json { render :show, status: :ok, location: @twofiveone }
      else
        format.html { render :edit }
        format.json { render json: @twofiveone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twofiveones/1
  # DELETE /twofiveones/1.json
  def destroy
    @twofiveone.destroy
    respond_to do |format|
      format.html { redirect_to twofiveones_url, notice: 'Twofiveone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twofiveone
      @twofiveone = Twofiveone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twofiveone_params
      params.fetch(:twofiveone, {})
    end
end
