class CreateHears < ActiveRecord::Migration[5.0]
  def change
    create_table :hears do |t|
      t.string   :subtype
      t.string   :duration
      t.string   :detection
      t.string   :effect
      t.string   :nervous_system

      t.timestamps
    end
  end
end
