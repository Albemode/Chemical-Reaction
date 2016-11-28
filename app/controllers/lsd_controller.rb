class LsdController < ApplicationController
  def index
    @lsd = Lsd.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def lsd_params
    params.require(:lsd).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :metabolism, :pharmacokinetic_data, :identifiers, :side_effects)
  end
end
