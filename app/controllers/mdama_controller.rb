class MdamaController < ApplicationController
  def index
    @mdama = Mdama.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def mdama_params
    params.require(:mdama).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :side_effects)
  end
end
