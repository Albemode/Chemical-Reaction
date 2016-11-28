class FourhompitsController < ApplicationController
  def index
    @fourhompits = Fourhomipts.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def fourhompit_params
    params.require(:fourhompit).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :side_effects, :pharmacology, :toxicity, :duration)
  end
end
