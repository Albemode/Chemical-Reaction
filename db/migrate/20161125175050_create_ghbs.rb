class CreateGhbs < ActiveRecord::Migration[5.0]
  def change
    create_table :ghbs do |t|
      t.string  :name
      t.string  :size_mb
      t.string  :records
      t.string  :file
      t.string  :formula
      t.string  :chemistry
      t.string  :legal_status
      t.string  :clinical_data
      t.decimal :cas_number
      t.string  :pharmacokinetic_data
      t.interger  :identifiers
      t.string  :neurotransmitter
      t.boolean :date_rape_drug
      t.boolean :medical_setting
      t.boolean :sideeffects

      t.timestamps
    end
  end
end
