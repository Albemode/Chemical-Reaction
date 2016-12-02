class FourhompitsController < ApplicationController
  def index
    @fourhompits = Fourhomipt.all
  end

  # GET /alcohols/1
  # GET /alcohols/1.json
  def show
  end

  # GET /alcohols/new
  def new
    @fourhompit = Fourhomipt.new
  end

  # GET /alcohols/1/edit
  def edit
  end

  # POST /alcohols
  # POST /alcohols.json
  def create
    @fourhompit = Fourhomipt.new(alcohol_params)

    respond_to do |format|
      if @fourhompit.save
        format.html { redirect_to @fourhompit, notice: 'Alcohol was successfully created.' }
        format.json { render :show, status: :created, location: @fourhompit }
      else
        format.html { render :new }
        format.json { render json: @fourhompit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alcohols/1
  # PATCH/PUT /alcohols/1.json
  def update
    respond_to do |format|
      if @fourhompit.update(alcohol_params)
        format.html { redirect_to @fourhompit, notice: 'Alcohol was successfully updated.' }
        format.json { render :show, status: :ok, location: @fourhompit }
      else
        format.html { render :edit }
        format.json { render json: @fourhompit.errors, status: :unprocessable_entity }
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
