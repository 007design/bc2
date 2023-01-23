require "application_system_test_case"

class OptionChassisRequirementsTest < ApplicationSystemTestCase
  setup do
    @option_chassis_requirement = option_chassis_requirements(:one)
  end

  test "visiting the index" do
    visit option_chassis_requirements_url
    assert_selector "h1", text: "Option chassis requirements"
  end

  test "should create option chassis requirement" do
    visit option_chassis_requirements_url
    click_on "New option chassis requirement"

    fill_in "Option", with: @option_chassis_requirement.option
    fill_in "Requirement", with: @option_chassis_requirement.requirement
    click_on "Create Option chassis requirement"

    assert_text "Option chassis requirement was successfully created"
    click_on "Back"
  end

  test "should update Option chassis requirement" do
    visit option_chassis_requirement_url(@option_chassis_requirement)
    click_on "Edit this option chassis requirement", match: :first

    fill_in "Option", with: @option_chassis_requirement.option
    fill_in "Requirement", with: @option_chassis_requirement.requirement
    click_on "Update Option chassis requirement"

    assert_text "Option chassis requirement was successfully updated"
    click_on "Back"
  end

  test "should destroy Option chassis requirement" do
    visit option_chassis_requirement_url(@option_chassis_requirement)
    click_on "Destroy this option chassis requirement", match: :first

    assert_text "Option chassis requirement was successfully destroyed"
  end
end
