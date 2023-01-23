# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 0) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attribute_types", id: :serial, force: :cascade do |t|
    t.string "name", limit: 45, null: false
    t.index ["id"], name: "attribute_types_id_UNIQUE", unique: true
  end

  create_table "chassis", id: :serial, force: :cascade do |t|
    t.string "name", limit: 45, null: false
    t.index ["id"], name: "chassis_id_UNIQUE", unique: true
  end

  create_table "factions", id: :serial, force: :cascade do |t|
    t.string "name", limit: 45, null: false
    t.index ["id"], name: "factions_id_UNIQUE", unique: true
  end

  create_table "model_types", id: :serial, force: :cascade do |t|
    t.string "name", limit: 45, null: false
    t.index ["id"], name: "model_types_id_UNIQUE", unique: true
  end

  create_table "movement_modes", id: :serial, force: :cascade do |t|
    t.string "name", limit: 45, null: false
    t.index ["id"], name: "movement_modes_id_UNIQUE", unique: true
  end

  create_table "option_attribute_upgrades", id: :serial, force: :cascade do |t|
    t.integer "option", null: false
    t.integer "upgrade", null: false
    t.integer "value"
    t.index ["id"], name: "option_attribute_upgrades_id_UNIQUE", unique: true
    t.index ["option"], name: "option_attribute_upgrades_option_idx"
    t.index ["upgrade"], name: "option_attribute_upgrades_attribute_idx"
  end

  create_table "option_chassis_requirements", id: :serial, force: :cascade do |t|
    t.integer "option", null: false
    t.integer "requirement", null: false
    t.index ["option"], name: "option_chassis_requirements_option_idx"
    t.index ["requirement"], name: "option_chassis_requirements_chassis_idx"
  end

  create_table "option_faction_requirements", id: :serial, force: :cascade do |t|
    t.integer "option", null: false
    t.integer "requirement", null: false
    t.index ["id"], name: "option_faction_requirements_id_UNIQUE", unique: true
    t.index ["option"], name: "option_faction_requirements_option_idx"
    t.index ["requirement"], name: "option_faction_requirements_faction_idx"
  end

  create_table "option_option_requirements", id: :serial, force: :cascade do |t|
    t.integer "option", null: false
    t.integer "requirement", null: false
    t.integer "min"
    t.integer "max"
    t.index ["id"], name: "option_option_requirements_id_UNIQUE", unique: true
    t.index ["option"], name: "option_option_requirements_option_idx"
    t.index ["requirement"], name: "option_option_requirements_requirement_idx"
  end

  create_table "option_role_requirements", id: :serial, force: :cascade do |t|
    t.integer "option", null: false
    t.integer "requirement", null: false
    t.integer "min"
    t.integer "max"
    t.index ["id"], name: "option_role_requirements_id_UNIQUE", unique: true
    t.index ["option"], name: "option_role_requirements_option_idx"
    t.index ["requirement"], name: "option_role_requirements_role_idx"
  end

  create_table "option_sublist_requirements", id: :serial, force: :cascade do |t|
    t.integer "option", null: false
    t.integer "requirement", null: false
    t.integer "min"
    t.integer "max"
    t.index ["id"], name: "option_sublist_requirements_id_UNIQUE", unique: true
    t.index ["option"], name: "option_sublist_requirements_option_idx"
    t.index ["requirement"], name: "option_sublist_requirements_sublist_idx"
  end

  create_table "option_trait_requirements", id: :serial, force: :cascade do |t|
    t.integer "option", null: false
    t.integer "requirement", null: false
    t.index ["id"], name: "option_trait_requirements_id_UNIQUE", unique: true
    t.index ["option"], name: "option_trait_requirements_option_idx"
    t.index ["requirement"], name: "option_trait_requirements_traits_idx"
  end

  create_table "option_trait_upgrades", id: :serial, force: :cascade do |t|
    t.integer "option", null: false
    t.integer "upgrade", null: false
    t.integer "value"
    t.index ["id"], name: "option_trait_upgrades_id_UNIQUE", unique: true
    t.index ["option"], name: "option_trait_upgrades_option_idx"
    t.index ["upgrade"], name: "option_trait_upgrades_trait_idx"
  end

  create_table "option_types", id: :serial, force: :cascade do |t|
    t.string "name", limit: 45, null: false
    t.index ["id"], name: "option_types_id_UNIQUE", unique: true
  end

  create_table "option_unit_upgrades", id: :serial, force: :cascade do |t|
    t.integer "option", null: false
    t.integer "upgrade", null: false
    t.index ["id"], name: "option_unit_upgrades_id_UNIQUE", unique: true
    t.index ["option"], name: "option_unit_upgrades_option_idx"
    t.index ["upgrade"], name: "option_unit_upgrades_unit_idx"
  end

  create_table "option_weapon_requirements", id: :serial, force: :cascade do |t|
    t.integer "option", null: false
    t.integer "requirement", null: false
    t.index ["id"], name: "option_weapon_requirements_id_UNIQUE", unique: true
    t.index ["option"], name: "option_weapon_requirements_option_idx"
    t.index ["requirement"], name: "option_weapon_requirements_weapon_idx"
  end

  create_table "option_weapon_upgrades", id: :serial, force: :cascade do |t|
    t.integer "option", null: false
    t.integer "upgrade", null: false
    t.index ["id"], name: "option_weapon_upgrades_id_UNIQUE", unique: true
    t.index ["option"], name: "option_weapon_upgrades_option_UNIQUE", unique: true
    t.index ["option"], name: "option_weapon_upgrades_option_idx"
    t.index ["upgrade"], name: "option_weapon_upgrades_weapon_idx"
  end

  create_table "options", id: :serial, force: :cascade do |t|
    t.string "name", limit: 45, null: false
    t.integer "tv", null: false
    t.string "description", limit: 45, null: false
    t.integer "type", null: false
    t.integer "armymax"
    t.integer "cgmax"
    t.index ["id"], name: "options_id_UNIQUE", unique: true
    t.index ["type"], name: "options_type_idx"
  end

  create_table "roles", id: :serial, force: :cascade do |t|
    t.string "name", limit: 45, null: false
  end

  create_table "sublists", id: :serial, force: :cascade do |t|
    t.integer "name", null: false
    t.integer "faction", null: false
    t.index ["faction"], name: "sublists_faction_idx"
    t.index ["id"], name: "sublists_id_UNIQUE", unique: true
  end

  create_table "trait_types", id: :serial, force: :cascade do |t|
    t.string "type", limit: 45, null: false
    t.index ["id"], name: "trait_types_id_UNIQUE", unique: true
  end

  create_table "traits", id: :serial, force: :cascade do |t|
    t.string "name", limit: 45, null: false
    t.string "description", limit: 45, null: false
    t.integer "type", null: false
    t.index ["id"], name: "traits_id_UNIQUE", unique: true
    t.index ["type"], name: "traits_type_idx"
  end

  create_table "unit_attributes", id: :serial, force: :cascade do |t|
    t.integer "unit", null: false
    t.integer "attribute", null: false
    t.integer "value"
    t.index ["attribute"], name: "unit_attributes_attribute_idx"
    t.index ["id"], name: "unit_attributes_id_UNIQUE", unique: true
    t.index ["unit"], name: "unit_attributes_unit_idx"
  end

  create_table "unit_chassis", id: :serial, force: :cascade do |t|
    t.integer "unit", null: false
    t.integer "chassis", null: false
    t.index ["chassis"], name: "unit_chassis_chassis_idx"
    t.index ["id"], name: "unit_chassis_id_UNIQUE", unique: true
    t.index ["unit"], name: "unit_chassis_unit_idx"
  end

  create_table "unit_factions", id: :serial, force: :cascade do |t|
    t.integer "unit", null: false
    t.integer "faction", null: false
    t.index ["faction"], name: "unit_factions_faction_idx"
    t.index ["id"], name: "unit_factions_id_UNIQUE", unique: true
    t.index ["unit"], name: "unit_factions_unit_idx"
  end

  create_table "unit_model_types", id: :serial, force: :cascade do |t|
    t.integer "unit", null: false
    t.integer "model_type", null: false
    t.index ["id"], name: "unit_model_types_id_UNIQUE", unique: true
    t.index ["model_type"], name: "unit_model_types_model_type_idx"
    t.index ["unit"], name: "unit_model_types_unit_idx"
  end

  create_table "unit_movement_modes", id: :serial, force: :cascade do |t|
    t.integer "unit", null: false
    t.integer "movement_type", null: false
    t.integer "value", null: false
    t.index ["id"], name: "unit_movement_modes_id_UNIQUE", unique: true
    t.index ["movement_type"], name: "unit_movement_modes_movement_type_idx"
    t.index ["unit"], name: "unit_movement_modes_unit_idx"
  end

  create_table "unit_roles", id: :serial, force: :cascade do |t|
    t.integer "unit", null: false
    t.integer "role", null: false
    t.index ["id"], name: "unit_roles_id_UNIQUE", unique: true
    t.index ["role"], name: "unit_roles_role_idx"
    t.index ["unit"], name: "unit_roles_unit_idx"
  end

  create_table "unit_traits", id: :serial, force: :cascade do |t|
    t.integer "unit", null: false
    t.integer "trait", null: false
    t.integer "value"
    t.index ["id"], name: "unit_traits_id_UNIQUE", unique: true
    t.index ["trait"], name: "unit_traits_trait_idx"
    t.index ["unit"], name: "unit_traits_unit_idx"
  end

  create_table "unit_weapon_traits", id: :serial, force: :cascade do |t|
    t.integer "unit_weapon", null: false
    t.integer "trait", null: false
    t.integer "value"
    t.index ["trait"], name: "unit_weapon_traits_trait_idx"
    t.index ["unit_weapon"], name: "unit_weapon_traits_unit_weapon_idx"
  end

  create_table "unit_weapons", id: :serial, force: :cascade do |t|
    t.integer "unit", null: false
    t.integer "weapon", null: false
    t.string "type", limit: 45, null: false
    t.index ["id"], name: "unit_weapons_id_UNIQUE", unique: true
    t.index ["unit"], name: "unit_weapons_unit_idx"
    t.index ["weapon"], name: "unit_weapons_weapon_idx"
  end

  create_table "units", id: :serial, force: :cascade do |t|
    t.string "name", limit: 45, null: false
    t.integer "tv", null: false
    t.boolean "variant", default: false, null: false
    t.index ["id"], name: "units_id_UNIQUE", unique: true
    t.index ["name"], name: "units_name_UNIQUE", unique: true
  end

  create_table "weapons", id: :serial, force: :cascade do |t|
    t.string "name", limit: 45, null: false
    t.index ["id"], name: "weapons_id_UNIQUE", unique: true
  end

  add_foreign_key "option_attribute_upgrades", "attribute_types", column: "upgrade", name: "option_attribute_upgrades_attribute"
  add_foreign_key "option_attribute_upgrades", "options", column: "option", name: "option_attribute_upgrades_option"
  add_foreign_key "option_chassis_requirements", "chassis", column: "requirement", name: "option_chassis_requirements_chassis"
  add_foreign_key "option_chassis_requirements", "options", column: "option", name: "option_chassis_requirements_option"
  add_foreign_key "option_faction_requirements", "factions", column: "requirement", name: "option_faction_requirements_faction"
  add_foreign_key "option_faction_requirements", "options", column: "option", name: "option_faction_requirements_option"
  add_foreign_key "option_option_requirements", "options", column: "option", name: "option_option_requirements_option"
  add_foreign_key "option_option_requirements", "options", column: "requirement", name: "option_option_requirements_requirement"
  add_foreign_key "option_role_requirements", "options", column: "option", name: "option_roles_requirements_option"
  add_foreign_key "option_role_requirements", "roles", column: "requirement", name: "option_role_requirements_role"
  add_foreign_key "option_sublist_requirements", "options", column: "option", name: "option_sublist_requirements_option"
  add_foreign_key "option_sublist_requirements", "sublists", column: "requirement", name: "option_sublist_requirements_sublist"
  add_foreign_key "option_trait_requirements", "options", column: "option", name: "option_trait_requirements_option"
  add_foreign_key "option_trait_requirements", "traits", column: "requirement", name: "option_trait_requirements_trait"
  add_foreign_key "option_trait_upgrades", "options", column: "option", name: "option_trait_upgrades_option"
  add_foreign_key "option_trait_upgrades", "traits", column: "upgrade", name: "option_trait_upgrades_trait"
  add_foreign_key "option_unit_upgrades", "options", column: "option", name: "option_unit_upgrades_option"
  add_foreign_key "option_unit_upgrades", "units", column: "upgrade", name: "option_unit_upgrades_unit"
  add_foreign_key "option_weapon_requirements", "options", column: "option", name: "option_weapon_requirements_option"
  add_foreign_key "option_weapon_requirements", "weapons", column: "requirement", name: "option_weapon_requirements_weapon"
  add_foreign_key "option_weapon_upgrades", "options", column: "option", name: "option_weapon_upgrades_option"
  add_foreign_key "option_weapon_upgrades", "weapons", column: "upgrade", name: "option_weapon_upgrades_weapon"
  add_foreign_key "options", "option_types", column: "type", name: "options_type"
  add_foreign_key "sublists", "factions", column: "faction", name: "sublists_faction"
  add_foreign_key "traits", "trait_types", column: "type", name: "traits_type"
  add_foreign_key "unit_attributes", "attribute_types", column: "attribute", name: "unit_attributes_attribute"
  add_foreign_key "unit_attributes", "units", column: "unit", name: "unit_attributes_unit"
  add_foreign_key "unit_chassis", "chassis", column: "chassis", name: "unit_chassis_chassis"
  add_foreign_key "unit_chassis", "units", column: "unit", name: "unit_chassis_unit"
  add_foreign_key "unit_factions", "factions", column: "faction", name: "unit_factions_faction"
  add_foreign_key "unit_factions", "units", column: "unit", name: "unit_factions_unit"
  add_foreign_key "unit_model_types", "model_types", column: "model_type", name: "unit_model_types_type"
  add_foreign_key "unit_model_types", "units", column: "unit", name: "unit_model_types_unit"
  add_foreign_key "unit_movement_modes", "movement_modes", column: "movement_type", name: "unit_movement_modes_mode"
  add_foreign_key "unit_movement_modes", "units", column: "unit", name: "unit_movement_modes_unit"
  add_foreign_key "unit_roles", "roles", column: "role", name: "unit_roles_roles"
  add_foreign_key "unit_roles", "units", column: "unit", name: "unit_roles_unit"
  add_foreign_key "unit_traits", "traits", column: "trait", name: "unit_traits_trait"
  add_foreign_key "unit_traits", "units", column: "unit", name: "unit_traits_unit"
  add_foreign_key "unit_weapon_traits", "traits", column: "trait", name: "unit_weapon_traits_trait"
  add_foreign_key "unit_weapon_traits", "unit_weapons", column: "unit_weapon", name: "unit_weapon_traits_weapon"
  add_foreign_key "unit_weapons", "units", column: "unit", name: "unit_weapons_unit"
  add_foreign_key "unit_weapons", "weapons", column: "weapon", name: "unit_weapons_weapon"
end
