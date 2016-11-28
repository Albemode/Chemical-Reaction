class KetamineController < ApplicationController
  def index
    @ketamine = Ketamine.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def ketamine_params
    params.require(:ketamine).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :side_effects)
  end
end
