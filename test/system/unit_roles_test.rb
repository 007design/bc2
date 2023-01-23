require "application_system_test_case"

class UnitRolesTest < ApplicationSystemTestCase
  setup do
    @unit_role = unit_roles(:one)
  end

  test "visiting the index" do
    visit unit_roles_url
    assert_selector "h1", text: "Unit roles"
  end

  test "should create unit role" do
    visit unit_roles_url
    click_on "New unit role"

    fill_in "Role", with: @unit_role.role
    fill_in "Unit", with: @unit_role.unit
    click_on "Create Unit role"

    assert_text "Unit role was successfully created"
    click_on "Back"
  end

  test "should update Unit role" do
    visit unit_role_url(@unit_role)
    click_on "Edit this unit role", match: :first

    fill_in "Role", with: @unit_role.role
    fill_in "Unit", with: @unit_role.unit
    click_on "Update Unit role"

    assert_text "Unit role was successfully updated"
    click_on "Back"
  end

  test "should destroy Unit role" do
    visit unit_role_url(@unit_role)
    click_on "Destroy this unit role", match: :first

    assert_text "Unit role was successfully destroyed"
  end
end
