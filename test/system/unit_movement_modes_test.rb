require "application_system_test_case"

class UnitMovementModesTest < ApplicationSystemTestCase
  setup do
    @unit_movement_mode = unit_movement_modes(:one)
  end

  test "visiting the index" do
    visit unit_movement_modes_url
    assert_selector "h1", text: "Unit movement modes"
  end

  test "should create unit movement mode" do
    visit unit_movement_modes_url
    click_on "New unit movement mode"

    fill_in "Movement type", with: @unit_movement_mode.movement_type
    fill_in "Unit", with: @unit_movement_mode.unit
    fill_in "Value", with: @unit_movement_mode.value
    click_on "Create Unit movement mode"

    assert_text "Unit movement mode was successfully created"
    click_on "Back"
  end

  test "should update Unit movement mode" do
    visit unit_movement_mode_url(@unit_movement_mode)
    click_on "Edit this unit movement mode", match: :first

    fill_in "Movement type", with: @unit_movement_mode.movement_type
    fill_in "Unit", with: @unit_movement_mode.unit
    fill_in "Value", with: @unit_movement_mode.value
    click_on "Update Unit movement mode"

    assert_text "Unit movement mode was successfully updated"
    click_on "Back"
  end

  test "should destroy Unit movement mode" do
    visit unit_movement_mode_url(@unit_movement_mode)
    click_on "Destroy this unit movement mode", match: :first

    assert_text "Unit movement mode was successfully destroyed"
  end
end
