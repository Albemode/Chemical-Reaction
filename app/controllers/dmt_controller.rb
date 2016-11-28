class DmtController < ApplicationController
  def index
    @dmt = Dmt.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def dmt_params
    params.require(:dmt).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :side_effects)
  end
end
