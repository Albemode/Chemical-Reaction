class PoppersController < ApplicationController
  before_action :set_popper, only: [:show, :edit, :update, :destroy]

  # GET /poppers
  # GET /poppers.json
  def index
    @poppers = Popper.all
  end

  # GET /poppers/1
  # GET /poppers/1.json
  def show
  end

  # GET /poppers/new
  def new
    @popper = Popper.new
  end

  # GET /poppers/1/edit
  def edit
  end

  # POST /poppers
  # POST /poppers.json
  def create
    @popper = Popper.new(popper_params)

    respond_to do |format|
      if @popper.save
        format.html { redirect_to @popper, notice: 'Popper was successfully created.' }
        format.json { render :show, status: :created, location: @popper }
      else
        format.html { render :new }
        format.json { render json: @popper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poppers/1
  # PATCH/PUT /poppers/1.json
  def update
    respond_to do |format|
      if @popper.update(popper_params)
        format.html { redirect_to @popper, notice: 'Popper was successfully updated.' }
        format.json { render :show, status: :ok, location: @popper }
      else
        format.html { render :edit }
        format.json { render json: @popper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poppers/1
  # DELETE /poppers/1.json
  def destroy
    @popper.destroy
    respond_to do |format|
      format.html { redirect_to poppers_url, notice: 'Popper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_popper
      @popper = Popper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def popper_params
      params.fetch(:popper, {})
    end
end
