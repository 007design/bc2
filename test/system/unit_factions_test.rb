require "application_system_test_case"

class UnitFactionsTest < ApplicationSystemTestCase
  setup do
    @unit_faction = unit_factions(:one)
  end

  test "visiting the index" do
    visit unit_factions_url
    assert_selector "h1", text: "Unit factions"
  end

  test "should create unit faction" do
    visit unit_factions_url
    click_on "New unit faction"

    fill_in "Faction", with: @unit_faction.faction
    fill_in "Unit", with: @unit_faction.unit
    click_on "Create Unit faction"

    assert_text "Unit faction was successfully created"
    click_on "Back"
  end

  test "should update Unit faction" do
    visit unit_faction_url(@unit_faction)
    click_on "Edit this unit faction", match: :first

    fill_in "Faction", with: @unit_faction.faction
    fill_in "Unit", with: @unit_faction.unit
    click_on "Update Unit faction"

    assert_text "Unit faction was successfully updated"
    click_on "Back"
  end

  test "should destroy Unit faction" do
    visit unit_faction_url(@unit_faction)
    click_on "Destroy this unit faction", match: :first

    assert_text "Unit faction was successfully destroyed"
  end
end
