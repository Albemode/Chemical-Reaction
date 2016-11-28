class ButyloneController < ApplicationController
  def index
    @butylone = Butylone.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def butylone_params
    params.require(:butylone).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :side_effects)
  end
end
