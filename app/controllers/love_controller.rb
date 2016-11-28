class LoveController < ApplicationController
  def index
    @love = Love.all
  end

  def show
  end

  def create
  end

  def edit
  end

  def love_params
    params.require(:love).permit(:name, :drug_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data:, :cas_number, :states, :attitudes, :affection, :emotion :side_effects)
  end
end
