class PsilocybinController < ApplicationController
  def index
    @psilocybin = Psilocybin.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def psilocybin_params
    params.require(:psilocybin).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :side_effects)
  end
end
