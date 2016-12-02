class AddDrugIdToalcohols < ActiveRecord::Migration[5.0]
  def change
    add_column :alcohols, :drug_id, :integer
  end
end
