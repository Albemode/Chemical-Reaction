class FourhompitsController < ApplicationController
  def index
    @fourhompits = Fourhomipts.all
  end

  # GET /alcohols/1
  # GET /alcohols/1.json
  def show
  end

  # GET /alcohols/new
  def new
    @fourhompits = Fourhomipts.new
  end

  # GET /alcohols/1/edit
  def edit
  end

  # POST /alcohols
  # POST /alcohols.json
  def create
    @fourhompits = Fourhomipts.new(alcohol_params)

    respond_to do |format|
      if @fourhompits.save
        format.html { redirect_to @fourhompits, notice: 'Alcohol was successfully created.' }
        format.json { render :show, status: :created, location: @fourhompits }
      else
        format.html { render :new }
        format.json { render json: @fourhompits.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alcohols/1
  # PATCH/PUT /alcohols/1.json
  def update
    respond_to do |format|
      if @fourhompits.update(alcohol_params)
        format.html { redirect_to @fourhompits, notice: 'Alcohol was successfully updated.' }
        format.json { render :show, status: :ok, location: @fourhompits }
      else
        format.html { render :edit }
        format.json { render json: @fourhompits.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alcohols/1
  # DELETE /alcohols/1.json
  def destroy
    @fourhompits.destroy
    respond_to do |format|
      format.html { redirect_to alcohols_url, notice: '4-HO-MPITS was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fourhompits
      @fourhompits = Fourhomipts.find(params[:id])
    end

  def fourhompit_params
    params.require(:fourhompit).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data, :cas_number, :side_effects, :pharmacology, :toxicity, :duration)
  end
end
