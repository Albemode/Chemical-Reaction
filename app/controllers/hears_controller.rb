class HearsController < ApplicationController
  before_action :set_hear, only: [:show, :edit, :update, :destroy]

  # GET /hears
  # GET /hears.json
  def index
    @hears = Hear.all
  end

  # GET /hears/1
  # GET /hears/1.json
  def show
  end

  # GET /hears/new
  def new
    @hear = Hear.new
  end

  # GET /hears/1/edit
  def edit
  end

  # POST /hears
  # POST /hears.json
  def create
    @hear = Hear.new(hear_params)

    respond_to do |format|
      if @hear.save
        format.html { redirect_to @hear, notice: 'Hear was successfully created.' }
        format.json { render :show, status: :created, location: @hear }
      else
        format.html { render :new }
        format.json { render json: @hear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hears/1
  # PATCH/PUT /hears/1.json
  def update
    respond_to do |format|
      if @hear.update(hear_params)
        format.html { redirect_to @hear, notice: 'Hear was successfully updated.' }
        format.json { render :show, status: :ok, location: @hear }
      else
        format.html { render :edit }
        format.json { render json: @hear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hears/1
  # DELETE /hears/1.json
  def destroy
    @hear.destroy
    respond_to do |format|
      format.html { redirect_to hears_url, notice: 'Hear was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hear
      @hear = Hear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hear_params
      params.require(:hear).permit(:subtype, :duration, :detection, :effect, :nervous_system)
    end
end
