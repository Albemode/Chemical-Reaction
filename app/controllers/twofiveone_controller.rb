class TwofiveoneController < ApplicationController
  def index
    @twofiveone = Twofiveone.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def twofiveone_params
    params.require(:twofiveone).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :side_effects)
  end
end
