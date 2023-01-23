require "application_system_test_case"

class UnitWeaponTraitsTest < ApplicationSystemTestCase
  setup do
    @unit_weapon_trait = unit_weapon_traits(:one)
  end

  test "visiting the index" do
    visit unit_weapon_traits_url
    assert_selector "h1", text: "Unit weapon traits"
  end

  test "should create unit weapon trait" do
    visit unit_weapon_traits_url
    click_on "New unit weapon trait"

    fill_in "Trait", with: @unit_weapon_trait.trait
    fill_in "Unit weapon", with: @unit_weapon_trait.unit_weapon
    fill_in "Value", with: @unit_weapon_trait.value
    click_on "Create Unit weapon trait"

    assert_text "Unit weapon trait was successfully created"
    click_on "Back"
  end

  test "should update Unit weapon trait" do
    visit unit_weapon_trait_url(@unit_weapon_trait)
    click_on "Edit this unit weapon trait", match: :first

    fill_in "Trait", with: @unit_weapon_trait.trait
    fill_in "Unit weapon", with: @unit_weapon_trait.unit_weapon
    fill_in "Value", with: @unit_weapon_trait.value
    click_on "Update Unit weapon trait"

    assert_text "Unit weapon trait was successfully updated"
    click_on "Back"
  end

  test "should destroy Unit weapon trait" do
    visit unit_weapon_trait_url(@unit_weapon_trait)
    click_on "Destroy this unit weapon trait", match: :first

    assert_text "Unit weapon trait was successfully destroyed"
  end
end
