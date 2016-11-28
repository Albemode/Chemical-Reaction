class CreateNitrous < ActiveRecord::Migration[5.0]
  def change
    create_table :nitrous do |t|
      t.string  :name
      t.string  :size_mb
      t.string  :records
      t.string  :file
      t.string  :formula
      t.string  :chemistry
      t.string  :legal_status
      t.string  :clinical_data
      t.decimal :cas_number
      t.boolean :side_effects

      t.timestamps
    end
  end
end
