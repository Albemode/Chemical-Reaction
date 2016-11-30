class KetaminesController < ApplicationController
  before_action :set_ketamine, only: [:show, :edit, :update, :destroy]

  # GET /ketamines
  # GET /ketamines.json
  def index
    @ketamines = Ketamine.all
  end

  # GET /ketamines/1
  # GET /ketamines/1.json
  def show
  end

  # GET /ketamines/new
  def new
    @ketamine = Ketamine.new
  end

  # GET /ketamines/1/edit
  def edit
  end

  # POST /ketamines
  # POST /ketamines.json
  def create
    @ketamine = Ketamine.new(ketamine_params)

    respond_to do |format|
      if @ketamine.save
        format.html { redirect_to @ketamine, notice: 'Ketamine was successfully created.' }
        format.json { render :show, status: :created, location: @ketamine }
      else
        format.html { render :new }
        format.json { render json: @ketamine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ketamines/1
  # PATCH/PUT /ketamines/1.json
  def update
    respond_to do |format|
      if @ketamine.update(ketamine_params)
        format.html { redirect_to @ketamine, notice: 'Ketamine was successfully updated.' }
        format.json { render :show, status: :ok, location: @ketamine }
      else
        format.html { render :edit }
        format.json { render json: @ketamine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ketamines/1
  # DELETE /ketamines/1.json
  def destroy
    @ketamine.destroy
    respond_to do |format|
      format.html { redirect_to ketamines_url, notice: 'Ketamine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ketamine
      @ketamine = Ketamine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ketamine_params
      params.fetch(:ketamine, {})
    end
end
