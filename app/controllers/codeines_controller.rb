class CodeinesController < ApplicationController
  before_action :set_codeine, only: [:show, :edit, :update, :destroy]

  # GET /codeines
  # GET /codeines.json
  def index
    @codeines = Codeine.all
  end

  # GET /codeines/1
  # GET /codeines/1.json
  def show
  end

  # GET /codeines/new
  def new
    @codeine = Codeine.new
  end

  # GET /codeines/1/edit
  def edit
  end

  # POST /codeines
  # POST /codeines.json
  def create
    @codeine = Codeine.new(codeine_params)

    respond_to do |format|
      if @codeine.save
        format.html { redirect_to @codeine, notice: 'Codeine was successfully created.' }
        format.json { render :show, status: :created, location: @codeine }
      else
        format.html { render :new }
        format.json { render json: @codeine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /codeines/1
  # PATCH/PUT /codeines/1.json
  def update
    respond_to do |format|
      if @codeine.update(codeine_params)
        format.html { redirect_to @codeine, notice: 'Codeine was successfully updated.' }
        format.json { render :show, status: :ok, location: @codeine }
      else
        format.html { render :edit }
        format.json { render json: @codeine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /codeines/1
  # DELETE /codeines/1.json
  def destroy
    @codeine.destroy
    respond_to do |format|
      format.html { redirect_to codeines_url, notice: 'Codeine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_codeine
      @codeine = Codeine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def codeine_params
      params.fetch(:codeine, {})
    end
end
