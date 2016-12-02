class LovesController < ApplicationController
  before_action :set_love, only: [:show, :edit, :update, :destroy]

  # GET /loves
  # GET /loves.json
  def index
    @loves = Love.all
  end

  # GET /loves/1
  # GET /loves/1.json
  def show
  end

  # GET /loves/new
  def new
    @love = Love.new
  end

  # GET /loves/1/edit
  def edit
  end

  # POST /loves
  # POST /loves.json
  def create
    @love = Love.new(love_params)

    respond_to do |format|
      if @love.save
        format.html { redirect_to @love, notice: 'Love was successfully created.' }
        format.json { render :show, status: :created, location: @love }
      else
        format.html { render :new }
        format.json { render json: @love.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loves/1
  # PATCH/PUT /loves/1.json
  def update
    respond_to do |format|
      if @love.update(love_params)
        format.html { redirect_to @love, notice: 'Love was successfully updated.' }
        format.json { render :show, status: :ok, location: @love }
      else
        format.html { render :edit }
        format.json { render json: @love.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loves/1
  # DELETE /loves/1.json
  def destroy
    @love.destroy
    respond_to do |format|
      format.html { redirect_to loves_url, notice: 'Love was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_love
      @love = Love.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def love_params
      params.require(:love).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data, :cas_number, :states, :attitudes, :affection, :emotion, :side_effects)
    end
end
