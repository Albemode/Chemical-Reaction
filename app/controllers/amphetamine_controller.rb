class AmphetamineController < ApplicationController
  def index
    @amphetamine = Amphetamine.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def amphetamine_params
    params.require(:amphetamine).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :side_effects)
  end
end
