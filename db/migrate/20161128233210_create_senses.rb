class CreateSenses < ActiveRecord::Migration[5.0]
  def change
    create_table :senses do |t|
      t.string   :physiological
      t.string   :organisms
      t.boolean  :perception
      t.boolean  :illusions
      t.boolean  :analogous_to_human_senses
      t.string   :nervous_system
      t.string   :traditional
      t.string   :non_traditional
      t.date     :time
      t.string   :culture
      t.string   :remote_sensing

      t.timestamps
    end
  end
end
