class CreateGhbs < ActiveRecord::Migration[5.0]
  def change
    create_table :ghbs do |t|
      t.string  :name
      t.string  :drug_name
      t.string  :title
      t.integer  :size_mb
      t.string  :records
      t.string  :file
      t.string  :formula
      t.string  :chemistry
      t.string  :legal_status
      t.string  :clinical_data
      t.binary :cas_number
      t.string  :pharmacokinetic_data
      t.integer  :identifiers
      t.string  :neurotransmitter
      t.boolean :date_rape_drug
      t.boolean :medical_setting
      t.boolean :side_effects

      t.timestamps
    end
  end
end
