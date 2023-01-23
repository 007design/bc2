require "application_system_test_case"

class OptionOptionRequirementsTest < ApplicationSystemTestCase
  setup do
    @option_option_requirement = option_option_requirements(:one)
  end

  test "visiting the index" do
    visit option_option_requirements_url
    assert_selector "h1", text: "Option option requirements"
  end

  test "should create option option requirement" do
    visit option_option_requirements_url
    click_on "New option option requirement"

    fill_in "Max", with: @option_option_requirement.max
    fill_in "Min", with: @option_option_requirement.min
    fill_in "Option", with: @option_option_requirement.option
    fill_in "Requirement", with: @option_option_requirement.requirement
    click_on "Create Option option requirement"

    assert_text "Option option requirement was successfully created"
    click_on "Back"
  end

  test "should update Option option requirement" do
    visit option_option_requirement_url(@option_option_requirement)
    click_on "Edit this option option requirement", match: :first

    fill_in "Max", with: @option_option_requirement.max
    fill_in "Min", with: @option_option_requirement.min
    fill_in "Option", with: @option_option_requirement.option
    fill_in "Requirement", with: @option_option_requirement.requirement
    click_on "Update Option option requirement"

    assert_text "Option option requirement was successfully updated"
    click_on "Back"
  end

  test "should destroy Option option requirement" do
    visit option_option_requirement_url(@option_option_requirement)
    click_on "Destroy this option option requirement", match: :first

    assert_text "Option option requirement was successfully destroyed"
  end
end
