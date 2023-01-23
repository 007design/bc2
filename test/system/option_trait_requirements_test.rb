require "application_system_test_case"

class OptionTraitRequirementsTest < ApplicationSystemTestCase
  setup do
    @option_trait_requirement = option_trait_requirements(:one)
  end

  test "visiting the index" do
    visit option_trait_requirements_url
    assert_selector "h1", text: "Option trait requirements"
  end

  test "should create option trait requirement" do
    visit option_trait_requirements_url
    click_on "New option trait requirement"

    fill_in "Option", with: @option_trait_requirement.option
    fill_in "Requirement", with: @option_trait_requirement.requirement
    click_on "Create Option trait requirement"

    assert_text "Option trait requirement was successfully created"
    click_on "Back"
  end

  test "should update Option trait requirement" do
    visit option_trait_requirement_url(@option_trait_requirement)
    click_on "Edit this option trait requirement", match: :first

    fill_in "Option", with: @option_trait_requirement.option
    fill_in "Requirement", with: @option_trait_requirement.requirement
    click_on "Update Option trait requirement"

    assert_text "Option trait requirement was successfully updated"
    click_on "Back"
  end

  test "should destroy Option trait requirement" do
    visit option_trait_requirement_url(@option_trait_requirement)
    click_on "Destroy this option trait requirement", match: :first

    assert_text "Option trait requirement was successfully destroyed"
  end
end
