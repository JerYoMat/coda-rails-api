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

ActiveRecord::Schema.define(version: 2019_04_13_181135) do

  create_table "companies", force: :cascade do |t|
    t.string "companyname"
    t.string "primarysymbol"
    t.string "primaryexchange"
    t.integer "sector_id"
    t.integer "industry_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["industry_id"], name: "index_companies_on_industry_id"
    t.index ["primarysymbol"], name: "index_companies_on_primarysymbol", unique: true
    t.index ["sector_id"], name: "index_companies_on_sector_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_favorites_on_company_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "financial_periods", force: :cascade do |t|
    t.integer "company_id"
    t.date "receiveddate"
    t.string "periodlengthcode"
    t.string "periodlength"
    t.date "periodenddate"
    t.integer "fiscalyear"
    t.string "fiscalquarter"
    t.integer "totalrevenue"
    t.integer "costofrevenue"
    t.integer "grossprofit"
    t.integer "researchdevelopmentexpense"
    t.integer "ebit"
    t.integer "incomebeforetaxes"
    t.integer "netincome"
    t.integer "cashandcashequivalents"
    t.integer "cashcashequivalentsandshortterminvestments"
    t.integer "othercurrentassets"
    t.integer "inventoriesnet"
    t.integer "totalcurrentassets"
    t.integer "intangibleassets"
    t.integer "propertyplantequipmentnet"
    t.integer "goodwill"
    t.integer "otherassets"
    t.integer "totalassets"
    t.integer "othercurrentliabilities"
    t.integer "totalshorttermdebt"
    t.integer "totalcurrentliabilities"
    t.integer "otherliabilities"
    t.integer "totallongtermdebt"
    t.integer "totalliabilities"
    t.integer "retainedearnings"
    t.integer "totalstockholdersequity"
    t.integer "cashfromoperatingactivities"
    t.integer "cashfrominvestingactivities"
    t.integer "cashfromfinancingactivities"
    t.integer "capitalexpenditures"
    t.integer "cfdepreciationamortization"
    t.integer "netchangeincash"
    t.string "formtype"
    t.string "audited"
    t.boolean "original"
    t.string "amended"
    t.boolean "preliminary"
    t.string "currencycode"
    t.boolean "crosscalculated"
    t.string "usdconversionrate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_financial_periods_on_company_id"
  end

  create_table "industries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "oauth_id"
    t.string "oauth_provider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
