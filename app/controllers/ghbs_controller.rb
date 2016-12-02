class GhbsController < ApplicationController
  def index
    @ghbs = Ghbs.all
  end

  # GET /ethers/1
  # GET /ethers/1.json
  def show
  end

  # GET /ethers/new
  def new
    @ghb = Ghb.new
  end

  # GET /ethers/1/edit
  def edit
  end

  # POST /ethers
  # POST /ethers.json
  def create
    @ghb = Ghb.new(ether_params)

    respond_to do |format|
      if @ghb.save
        format.html { redirect_to @ghb, notice: 'Ether was successfully created.' }
        format.json { render :show, status: :created, location: @ghb }
      else
        format.html { render :new }
        format.json { render json: @ghb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ethers/1
  # PATCH/PUT /ethers/1.json
  def update
    respond_to do |format|
      if @ghb.update(ether_params)
        format.html { redirect_to @ghb, notice: 'Ether was successfully updated.' }
        format.json { render :show, status: :ok, location: @ghb }
      else
        format.html { render :edit }
        format.json { render json: @ghb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ethers/1
  # DELETE /ethers/1.json
  def destroy
    @ghb.destroy
    respond_to do |format|
      format.html { redirect_to ethers_url, notice: 'Ether was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ether
      @ghb = Ghb.find(params[:id])
    end

  def ghbs_params
    params.require(:ghbs).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :side_effects, :pharmacokinetic_data, :identifiers, :neurotransmitter, :date_rape_drug, :medical_setting)
  end
end
