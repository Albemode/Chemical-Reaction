class CreateDrugs < ActiveRecord::Migration[5.0]
  def change
    create_table :drugs do |t|
      t.string  :title
      t.text    :description
      t.string  :control
      t.string  :report
      t.string  :records
      t.string  :event
      t.boolean :administration
      t.boolean :effects
      t.boolean :medication

      t.timestamps
    end
  end
end
