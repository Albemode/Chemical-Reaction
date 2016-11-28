class MxeController < ApplicationController
  def index
    @MxeController = Mxe.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def mxe_params
    params.require(:mxe).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :side_effects)
  end
end
