require "application_system_test_case"

class UnitModelTypesTest < ApplicationSystemTestCase
  setup do
    @unit_model_type = unit_model_types(:one)
  end

  test "visiting the index" do
    visit unit_model_types_url
    assert_selector "h1", text: "Unit model types"
  end

  test "should create unit model type" do
    visit unit_model_types_url
    click_on "New unit model type"

    fill_in "Model type", with: @unit_model_type.model_type
    fill_in "Unit", with: @unit_model_type.unit
    click_on "Create Unit model type"

    assert_text "Unit model type was successfully created"
    click_on "Back"
  end

  test "should update Unit model type" do
    visit unit_model_type_url(@unit_model_type)
    click_on "Edit this unit model type", match: :first

    fill_in "Model type", with: @unit_model_type.model_type
    fill_in "Unit", with: @unit_model_type.unit
    click_on "Update Unit model type"

    assert_text "Unit model type was successfully updated"
    click_on "Back"
  end

  test "should destroy Unit model type" do
    visit unit_model_type_url(@unit_model_type)
    click_on "Destroy this unit model type", match: :first

    assert_text "Unit model type was successfully destroyed"
  end
end
