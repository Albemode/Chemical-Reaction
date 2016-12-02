# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161201225148) do

  create_table "alcohols", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.boolean  "side_effects"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "drug_id"
  end

  create_table "amphetamines", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.boolean  "side_effects"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "angers", force: :cascade do |t|
    t.string   "name"
    t.string   "emotion_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.string   "states"
    t.boolean  "attitudes"
    t.string   "affection"
    t.boolean  "drug"
    t.boolean  "side_effects"
    t.string   "passive"
    t.string   "aggressive"
    t.string   "expression"
    t.string   "causes"
    t.string   "theory"
    t.string   "strategies"
    t.string   "psychology"
    t.string   "neurology"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "anticipations", force: :cascade do |t|
    t.string   "name"
    t.string   "emotion_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.string   "states"
    t.boolean  "attitudes"
    t.string   "affection"
    t.boolean  "drug"
    t.boolean  "side_effects"
    t.string   "causes"
    t.string   "psychology"
    t.string   "theory"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "butylones", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.string   "pharmacokinetic_data"
    t.integer  "identifiers"
    t.string   "entactogen"
    t.string   "psychedelic"
    t.boolean  "side_effects"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "cocaines", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.boolean  "side_effects"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "codeines", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.boolean  "pain"
    t.boolean  "cough_medicine"
    t.boolean  "side_effects"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "confusions", force: :cascade do |t|
    t.string   "name"
    t.string   "emotion_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.string   "states"
    t.boolean  "attitudes"
    t.string   "affection"
    t.boolean  "drug"
    t.boolean  "side_effects"
    t.string   "causes"
    t.string   "psychology"
    t.string   "theory"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "digusts", force: :cascade do |t|
    t.string   "name"
    t.string   "emotion_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.decimal  "cas_number"
    t.string   "states"
    t.boolean  "attitudes"
    t.string   "affection"
    t.boolean  "drug"
    t.boolean  "side_effects"
    t.string   "causes"
    t.string   "psychology"
    t.string   "theory"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "dmts", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.boolean  "side_effects"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "drugs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "control"
    t.string   "report"
    t.string   "records"
    t.string   "event"
    t.boolean  "administration"
    t.boolean  "effects"
    t.boolean  "medication"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "brand_name"
  end

  create_table "emotions", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "effects"
    t.string   "control"
    t.string   "report"
    t.integer  "records"
    t.string   "event"
    t.string   "components"
    t.string   "classification"
    t.string   "theories"
    t.binary   "genetics"
    t.string   "neurocircuitry"
    t.string   "prefrontal_cortex"
    t.string   "disciplinary_approaches"
    t.string   "history"
    t.string   "sociology"
    t.string   "computer_science"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "envies", force: :cascade do |t|
    t.string   "name"
    t.string   "emotion_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.string   "states"
    t.boolean  "attitudes"
    t.string   "affection"
    t.boolean  "drug"
    t.boolean  "side_effects"
    t.string   "causes"
    t.string   "psychology"
    t.string   "theory"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "ethers", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.boolean  "side_effects"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "fears", force: :cascade do |t|
    t.string   "name"
    t.string   "emotion_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.string   "states"
    t.boolean  "attitudes"
    t.string   "affection"
    t.boolean  "drug"
    t.boolean  "side_effects"
    t.string   "causes"
    t.string   "theory"
    t.string   "common_phobias"
    t.string   "mechanism"
    t.string   "management"
    t.string   "psychology"
    t.string   "manipulation"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "fourhomipts", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.boolean  "side_effects"
    t.string   "pharmacology"
    t.boolean  "toxicity"
    t.date     "duration"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "ghbs", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.string   "pharmacokinetic_data"
    t.integer  "identifiers"
    t.string   "neurotransmitter"
    t.boolean  "date_rape_drug"
    t.boolean  "medical_setting"
    t.boolean  "side_effects"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "hopes", force: :cascade do |t|
    t.string   "name"
    t.string   "emotion_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.string   "states"
    t.boolean  "attitudes"
    t.string   "affection"
    t.boolean  "drug"
    t.boolean  "side_effects"
    t.string   "causes"
    t.string   "psychology"
    t.string   "theory"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "joys", force: :cascade do |t|
    t.string   "name"
    t.string   "emotion_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.string   "states"
    t.boolean  "attitudes"
    t.string   "affection"
    t.boolean  "drug"
    t.boolean  "side_effects"
    t.string   "causes"
    t.string   "psychology"
    t.string   "theory"
    t.boolean  "feeling"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "ketamines", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.boolean  "side_effects"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "loves", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.string   "states"
    t.boolean  "attitudes"
    t.string   "affection"
    t.boolean  "emotion"
    t.boolean  "side_effects"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "lsds", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.string   "metabolism"
    t.string   "pharmacokinetic_data"
    t.integer  "identifiers"
    t.boolean  "side_effects"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "mdamas", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.boolean  "side_effects"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "mescalines", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.boolean  "side_effects"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "mxes", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.boolean  "side_effects"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "nitrous", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.boolean  "side_effects"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "pains", force: :cascade do |t|
    t.string   "name"
    t.string   "emotion_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.string   "states"
    t.boolean  "attitudes"
    t.string   "affection"
    t.boolean  "drug"
    t.boolean  "side_effects"
    t.string   "causes"
    t.string   "psychology"
    t.string   "nociceptive"
    t.string   "psychogenic"
    t.string   "theory"
    t.string   "assessment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "patiences", force: :cascade do |t|
    t.string   "name"
    t.string   "emotion_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.string   "states"
    t.boolean  "attitudes"
    t.string   "affection"
    t.boolean  "drug"
    t.boolean  "side_effects"
    t.string   "causes"
    t.string   "psychology"
    t.string   "theory"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "poppers", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.boolean  "side_effects"
    t.string   "phiscal_data"
    t.date     "duration"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "psilocybins", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.boolean  "side_effects"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "respects", force: :cascade do |t|
    t.string   "name"
    t.string   "emotion_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.string   "states"
    t.boolean  "attitudes"
    t.string   "affection"
    t.boolean  "drug"
    t.boolean  "side_effects"
    t.string   "causes"
    t.string   "psychology"
    t.string   "theory"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "saddnesses", force: :cascade do |t|
    t.string   "name"
    t.string   "emotion_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.string   "states"
    t.boolean  "attitudes"
    t.string   "affection"
    t.boolean  "drug"
    t.boolean  "side_effects"
    t.string   "causes"
    t.string   "psychology"
    t.string   "theory"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "senses", force: :cascade do |t|
    t.string   "physiological"
    t.string   "organisms"
    t.boolean  "perception"
    t.boolean  "illusions"
    t.boolean  "analogous_to_human_senses"
    t.string   "nervous_system"
    t.string   "traditional"
    t.string   "non_traditional"
    t.date     "time"
    t.string   "culture"
    t.string   "remote_sensing"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "surprises", force: :cascade do |t|
    t.string   "name"
    t.string   "emotion_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.string   "states"
    t.boolean  "attitudes"
    t.string   "affection"
    t.boolean  "drug"
    t.boolean  "side_effects"
    t.string   "causes"
    t.string   "psychology"
    t.string   "theory"
    t.string   "construction"
    t.string   "physiological_responses"
    t.boolean  "familiarity"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "thcs", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.boolean  "side_effects"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "trusts", force: :cascade do |t|
    t.string   "name"
    t.string   "emotion_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.string   "states"
    t.boolean  "attitudes"
    t.string   "affection"
    t.boolean  "drug"
    t.boolean  "side_effects"
    t.string   "causes"
    t.string   "psychology"
    t.string   "theory"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "twofiveones", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.boolean  "side_effects"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "weeds", force: :cascade do |t|
    t.string   "name"
    t.string   "drug_name"
    t.string   "title"
    t.integer  "size_mb"
    t.string   "records"
    t.string   "file"
    t.string   "formula"
    t.string   "chemistry"
    t.string   "legal_status"
    t.string   "clinical_data"
    t.binary   "cas_number"
    t.boolean  "side_effects"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
