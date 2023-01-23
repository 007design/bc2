require "application_system_test_case"

class UnitWeaponsTest < ApplicationSystemTestCase
  setup do
    @unit_weapon = unit_weapons(:one)
  end

  test "visiting the index" do
    visit unit_weapons_url
    assert_selector "h1", text: "Unit weapons"
  end

  test "should create unit weapon" do
    visit unit_weapons_url
    click_on "New unit weapon"

    fill_in "Type", with: @unit_weapon.type
    fill_in "Unit", with: @unit_weapon.unit
    fill_in "Weapon", with: @unit_weapon.weapon
    click_on "Create Unit weapon"

    assert_text "Unit weapon was successfully created"
    click_on "Back"
  end

  test "should update Unit weapon" do
    visit unit_weapon_url(@unit_weapon)
    click_on "Edit this unit weapon", match: :first

    fill_in "Type", with: @unit_weapon.type
    fill_in "Unit", with: @unit_weapon.unit
    fill_in "Weapon", with: @unit_weapon.weapon
    click_on "Update Unit weapon"

    assert_text "Unit weapon was successfully updated"
    click_on "Back"
  end

  test "should destroy Unit weapon" do
    visit unit_weapon_url(@unit_weapon)
    click_on "Destroy this unit weapon", match: :first

    assert_text "Unit weapon was successfully destroyed"
  end
end
