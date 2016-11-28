class CreateEmotions < ActiveRecord::Migration[5.0]
  def change
    create_table :emotions do |t|
      t.string   :title
      t.text     :description
      t.boolean  :effects
      t.string   :control
      t.string   :report
      t.integer  :records
      t.string   :event
      t.string   :components
      t.string   :classification
      t.string   :theories
      t.binary   :genetics
      t.string   :neurocircuitry
      t.string   :prefrontal_cortex
      t.string   :disciplinary_approaches
      t.string   :history
      t.string   :sociology
      t.string   :computer_science

      t.timestamps
    end
  end
end
