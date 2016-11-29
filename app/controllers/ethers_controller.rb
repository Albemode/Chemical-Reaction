class EthersController < ApplicationController
  before_action :set_ether, only: [:show, :edit, :update, :destroy]

  # GET /ethers
  # GET /ethers.json
  def index
    @ethers = Ether.all
  end

  # GET /ethers/1
  # GET /ethers/1.json
  def show
  end

  # GET /ethers/new
  def new
    @ether = Ether.new
  end

  # GET /ethers/1/edit
  def edit
  end

  # POST /ethers
  # POST /ethers.json
  def create
    @ether = Ether.new(ether_params)

    respond_to do |format|
      if @ether.save
        format.html { redirect_to @ether, notice: 'Ether was successfully created.' }
        format.json { render :show, status: :created, location: @ether }
      else
        format.html { render :new }
        format.json { render json: @ether.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ethers/1
  # PATCH/PUT /ethers/1.json
  def update
    respond_to do |format|
      if @ether.update(ether_params)
        format.html { redirect_to @ether, notice: 'Ether was successfully updated.' }
        format.json { render :show, status: :ok, location: @ether }
      else
        format.html { render :edit }
        format.json { render json: @ether.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ethers/1
  # DELETE /ethers/1.json
  def destroy
    @ether.destroy
    respond_to do |format|
      format.html { redirect_to ethers_url, notice: 'Ether was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ether
      @ether = Ether.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ether_params
      params.fetch(:ether, {})
    end
end
