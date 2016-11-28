class ThcController < ApplicationController
  def index
    @thc = Thc.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def thc_params
    params.require(:thc).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :side_effects)
  end
end
