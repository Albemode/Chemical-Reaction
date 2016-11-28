class CodeineController < ApplicationController
  def index
    @codeine = Codeine.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def codeine_params
    params.require(:codeine).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :pain, :cough_medicine, :side_effects)
  end
end
