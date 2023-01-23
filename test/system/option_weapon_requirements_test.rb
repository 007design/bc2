require "application_system_test_case"

class OptionWeaponRequirementsTest < ApplicationSystemTestCase
  setup do
    @option_weapon_requirement = option_weapon_requirements(:one)
  end

  test "visiting the index" do
    visit option_weapon_requirements_url
    assert_selector "h1", text: "Option weapon requirements"
  end

  test "should create option weapon requirement" do
    visit option_weapon_requirements_url
    click_on "New option weapon requirement"

    fill_in "Option", with: @option_weapon_requirement.option
    fill_in "Requirement", with: @option_weapon_requirement.requirement
    click_on "Create Option weapon requirement"

    assert_text "Option weapon requirement was successfully created"
    click_on "Back"
  end

  test "should update Option weapon requirement" do
    visit option_weapon_requirement_url(@option_weapon_requirement)
    click_on "Edit this option weapon requirement", match: :first

    fill_in "Option", with: @option_weapon_requirement.option
    fill_in "Requirement", with: @option_weapon_requirement.requirement
    click_on "Update Option weapon requirement"

    assert_text "Option weapon requirement was successfully updated"
    click_on "Back"
  end

  test "should destroy Option weapon requirement" do
    visit option_weapon_requirement_url(@option_weapon_requirement)
    click_on "Destroy this option weapon requirement", match: :first

    assert_text "Option weapon requirement was successfully destroyed"
  end
end
