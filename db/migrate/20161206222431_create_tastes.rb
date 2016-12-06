class CreateTastes < ActiveRecord::Migration[5.0]
  def change
    create_table :tastes do |t|
      t.string   :subtype
      t.string   :duration
      t.string   :detection
      t.string   :effect
      t.string   :nervous_system

      t.timestamps
    end
  end
end
