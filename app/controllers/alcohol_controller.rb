class AlcoholController < ApplicationController
  def index
    @alcohols = Alcohol.all
  end

  def show

  end

  def create
  end

  def edit
  end

  def alcohol_params
    params.require(:alcohol).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :side_effects)
  end
end
