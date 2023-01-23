require "application_system_test_case"

class MovementModesTest < ApplicationSystemTestCase
  setup do
    @movement_mode = movement_modes(:one)
  end

  test "visiting the index" do
    visit movement_modes_url
    assert_selector "h1", text: "Movement modes"
  end

  test "should create movement mode" do
    visit movement_modes_url
    click_on "New movement mode"

    fill_in "Name", with: @movement_mode.name
    click_on "Create Movement mode"

    assert_text "Movement mode was successfully created"
    click_on "Back"
  end

  test "should update Movement mode" do
    visit movement_mode_url(@movement_mode)
    click_on "Edit this movement mode", match: :first

    fill_in "Name", with: @movement_mode.name
    click_on "Update Movement mode"

    assert_text "Movement mode was successfully updated"
    click_on "Back"
  end

  test "should destroy Movement mode" do
    visit movement_mode_url(@movement_mode)
    click_on "Destroy this movement mode", match: :first

    assert_text "Movement mode was successfully destroyed"
  end
end
