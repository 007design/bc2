require "application_system_test_case"

class UnitChassisTest < ApplicationSystemTestCase
  setup do
    @unit_chassi = unit_chassis(:one)
  end

  test "visiting the index" do
    visit unit_chassis_url
    assert_selector "h1", text: "Unit chassis"
  end

  test "should create unit chassi" do
    visit unit_chassis_url
    click_on "New unit chassi"

    fill_in "Chassis", with: @unit_chassi.chassis
    fill_in "Unit", with: @unit_chassi.unit
    click_on "Create Unit chassi"

    assert_text "Unit chassi was successfully created"
    click_on "Back"
  end

  test "should update Unit chassi" do
    visit unit_chassi_url(@unit_chassi)
    click_on "Edit this unit chassi", match: :first

    fill_in "Chassis", with: @unit_chassi.chassis
    fill_in "Unit", with: @unit_chassi.unit
    click_on "Update Unit chassi"

    assert_text "Unit chassi was successfully updated"
    click_on "Back"
  end

  test "should destroy Unit chassi" do
    visit unit_chassi_url(@unit_chassi)
    click_on "Destroy this unit chassi", match: :first

    assert_text "Unit chassi was successfully destroyed"
  end
end
