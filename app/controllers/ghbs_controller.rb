class GhbsController < ApplicationController
  def index
    @ghbs = Ghbs.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def ghbs_params
    params.require(:ghbs).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :side_effects, :pharmacokinetic_data, :identifiers, :neurotransmitter, :date_rape_drug, :medical_setting)
  end
end
