class CreateSurprises < ActiveRecord::Migration[5.0]
  def change
    create_table :surprises do |t|
      t.string  :name
      t.string  :emotion_name
      t.string  :title
      t.string  :size_mb
      t.string  :records
      t.string  :file
      t.string  :formula
      t.string  :chemistry
      t.string  :legal_status
      t.string  :clinical_data
      t.decimal :cas_number
      t.string  :states
      t.boolean :attitudes
      t.string  :affection
      t.boolean :drug
      t.boolean :side_effects
      t.string  :construction
      t.string  :physiological_responses
      t.boolean :familiarity

      t.timestamps
    end
  end
end
