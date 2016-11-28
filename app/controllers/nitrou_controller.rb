class NitrouController < ApplicationController
  def index
    @nitrou = Nitrou.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def nitrou_params
    params.require(:nitrou).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :side_effects)
  end
end
