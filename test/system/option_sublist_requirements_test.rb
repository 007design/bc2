require "application_system_test_case"

class OptionSublistRequirementsTest < ApplicationSystemTestCase
  setup do
    @option_sublist_requirement = option_sublist_requirements(:one)
  end

  test "visiting the index" do
    visit option_sublist_requirements_url
    assert_selector "h1", text: "Option sublist requirements"
  end

  test "should create option sublist requirement" do
    visit option_sublist_requirements_url
    click_on "New option sublist requirement"

    fill_in "Max", with: @option_sublist_requirement.max
    fill_in "Min", with: @option_sublist_requirement.min
    fill_in "Option", with: @option_sublist_requirement.option
    fill_in "Requirement", with: @option_sublist_requirement.requirement
    click_on "Create Option sublist requirement"

    assert_text "Option sublist requirement was successfully created"
    click_on "Back"
  end

  test "should update Option sublist requirement" do
    visit option_sublist_requirement_url(@option_sublist_requirement)
    click_on "Edit this option sublist requirement", match: :first

    fill_in "Max", with: @option_sublist_requirement.max
    fill_in "Min", with: @option_sublist_requirement.min
    fill_in "Option", with: @option_sublist_requirement.option
    fill_in "Requirement", with: @option_sublist_requirement.requirement
    click_on "Update Option sublist requirement"

    assert_text "Option sublist requirement was successfully updated"
    click_on "Back"
  end

  test "should destroy Option sublist requirement" do
    visit option_sublist_requirement_url(@option_sublist_requirement)
    click_on "Destroy this option sublist requirement", match: :first

    assert_text "Option sublist requirement was successfully destroyed"
  end
end
