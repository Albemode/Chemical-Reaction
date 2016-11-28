class CocaineController < ApplicationController
  def index
    @cocaine = Cocaine.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def cocaine_params
    params.require(:cocaine).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :side_effects)
  end
end
