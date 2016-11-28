class PopperController < ApplicationController
  def index
    @popper = Popper.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def popper_params
    params.require(:popper).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :side_effects :phiscal_data, :duration)
  end
end
