class CreateRespects < ActiveRecord::Migration[5.0]
  def change
    create_table :respects do |t|
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
      tt.boolean :drug
      t.boolean :side_effects

      t.timestamps
    end
  end
end
