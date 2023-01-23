require "application_system_test_case"

class OptionRoleRequirementsTest < ApplicationSystemTestCase
  setup do
    @option_role_requirement = option_role_requirements(:one)
  end

  test "visiting the index" do
    visit option_role_requirements_url
    assert_selector "h1", text: "Option role requirements"
  end

  test "should create option role requirement" do
    visit option_role_requirements_url
    click_on "New option role requirement"

    fill_in "Max", with: @option_role_requirement.max
    fill_in "Min", with: @option_role_requirement.min
    fill_in "Option", with: @option_role_requirement.option
    fill_in "Requirement", with: @option_role_requirement.requirement
    click_on "Create Option role requirement"

    assert_text "Option role requirement was successfully created"
    click_on "Back"
  end

  test "should update Option role requirement" do
    visit option_role_requirement_url(@option_role_requirement)
    click_on "Edit this option role requirement", match: :first

    fill_in "Max", with: @option_role_requirement.max
    fill_in "Min", with: @option_role_requirement.min
    fill_in "Option", with: @option_role_requirement.option
    fill_in "Requirement", with: @option_role_requirement.requirement
    click_on "Update Option role requirement"

    assert_text "Option role requirement was successfully updated"
    click_on "Back"
  end

  test "should destroy Option role requirement" do
    visit option_role_requirement_url(@option_role_requirement)
    click_on "Destroy this option role requirement", match: :first

    assert_text "Option role requirement was successfully destroyed"
  end
end
