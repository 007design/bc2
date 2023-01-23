require "application_system_test_case"

class OptionFactionRequirementsTest < ApplicationSystemTestCase
  setup do
    @option_faction_requirement = option_faction_requirements(:one)
  end

  test "visiting the index" do
    visit option_faction_requirements_url
    assert_selector "h1", text: "Option faction requirements"
  end

  test "should create option faction requirement" do
    visit option_faction_requirements_url
    click_on "New option faction requirement"

    fill_in "Option", with: @option_faction_requirement.option
    fill_in "Requirement", with: @option_faction_requirement.requirement
    click_on "Create Option faction requirement"

    assert_text "Option faction requirement was successfully created"
    click_on "Back"
  end

  test "should update Option faction requirement" do
    visit option_faction_requirement_url(@option_faction_requirement)
    click_on "Edit this option faction requirement", match: :first

    fill_in "Option", with: @option_faction_requirement.option
    fill_in "Requirement", with: @option_faction_requirement.requirement
    click_on "Update Option faction requirement"

    assert_text "Option faction requirement was successfully updated"
    click_on "Back"
  end

  test "should destroy Option faction requirement" do
    visit option_faction_requirement_url(@option_faction_requirement)
    click_on "Destroy this option faction requirement", match: :first

    assert_text "Option faction requirement was successfully destroyed"
  end
end
