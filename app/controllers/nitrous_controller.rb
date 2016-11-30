class NitrousController < ApplicationController
  before_action :set_nitrou, only: [:show, :edit, :update, :destroy]

  # GET /nitrous
  # GET /nitrous.json
  def index
    @nitrous = Nitrou.all
  end

  # GET /nitrous/1
  # GET /nitrous/1.json
  def show
  end

  # GET /nitrous/new
  def new
    @nitrou = Nitrou.new
  end

  # GET /nitrous/1/edit
  def edit
  end

  # POST /nitrous
  # POST /nitrous.json
  def create
    @nitrou = Nitrou.new(nitrou_params)

    respond_to do |format|
      if @nitrou.save
        format.html { redirect_to @nitrou, notice: 'Nitrou was successfully created.' }
        format.json { render :show, status: :created, location: @nitrou }
      else
        format.html { render :new }
        format.json { render json: @nitrou.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nitrous/1
  # PATCH/PUT /nitrous/1.json
  def update
    respond_to do |format|
      if @nitrou.update(nitrou_params)
        format.html { redirect_to @nitrou, notice: 'Nitrou was successfully updated.' }
        format.json { render :show, status: :ok, location: @nitrou }
      else
        format.html { render :edit }
        format.json { render json: @nitrou.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nitrous/1
  # DELETE /nitrous/1.json
  def destroy
    @nitrou.destroy
    respond_to do |format|
      format.html { redirect_to nitrous_url, notice: 'Nitrou was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nitrou
      @nitrou = Nitrou.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nitrou_params
      params.fetch(:nitrou, {})
    end
end
