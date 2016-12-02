class AmphetaminesController < ApplicationController
  before_action :set_amphetamine, only: [:show, :edit, :update, :destroy]

  # GET /amphetamines
  # GET /amphetamines.json
  def index
    @amphetamines = Amphetamine.all
  end

  # GET /amphetamines/1
  # GET /amphetamines/1.json
  def show
  end

  # GET /amphetamines/new
  def new
    @amphetamine = Amphetamine.new
  end

  # GET /amphetamines/1/edit
  def edit
  end

  # POST /amphetamines
  # POST /amphetamines.json
  def create
    @amphetamine = Amphetamine.new(amphetamine_params)

    respond_to do |format|
      if @amphetamine.save
        format.html { redirect_to @amphetamine, notice: 'Amphetamine was successfully created.' }
        format.json { render :show, status: :created, location: @amphetamine }
      else
        format.html { render :new }
        format.json { render json: @amphetamine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amphetamines/1
  # PATCH/PUT /amphetamines/1.json
  def update
    respond_to do |format|
      if @amphetamine.update(amphetamine_params)
        format.html { redirect_to @amphetamine, notice: 'Amphetamine was successfully updated.' }
        format.json { render :show, status: :ok, location: @amphetamine }
      else
        format.html { render :edit }
        format.json { render json: @amphetamine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amphetamines/1
  # DELETE /amphetamines/1.json
  def destroy
    @amphetamine.destroy
    respond_to do |format|
      format.html { redirect_to amphetamines_url, notice: 'Amphetamine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amphetamine
      @amphetamine = Amphetamine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amphetamine_params
      params.require(:amphetamine).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data, :cas_number, :side_effects)
    end
end
