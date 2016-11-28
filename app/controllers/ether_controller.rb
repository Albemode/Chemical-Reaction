class EtherController < ApplicationController
  def index
    @ether = Ether.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def ether_params
    params.require(:ether).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :side_effects)
  end
end
