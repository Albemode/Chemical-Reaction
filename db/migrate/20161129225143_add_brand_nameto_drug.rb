class AddBrandNametoDrug < ActiveRecord::Migration[5.0]
  def change
    add_column :drugs, :brand_name, :string
  end
end
