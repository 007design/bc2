require "application_system_test_case"

class UnitAttributesTest < ApplicationSystemTestCase
  setup do
    @unit_attribute = unit_attributes(:one)
  end

  test "visiting the index" do
    visit unit_attributes_url
    assert_selector "h1", text: "Unit attributes"
  end

  test "should create unit attribute" do
    visit unit_attributes_url
    click_on "New unit attribute"

    fill_in "Attribute", with: @unit_attribute.attribute_type
    fill_in "Unit", with: @unit_attribute.unit
    fill_in "Value", with: @unit_attribute.value
    click_on "Create Unit attribute"

    assert_text "Unit attribute was successfully created"
    click_on "Back"
  end

  test "should update Unit attribute" do
    visit unit_attribute_url(@unit_attribute)
    click_on "Edit this unit attribute", match: :first

    fill_in "Attribute", with: @unit_attribute.attribute_type
    fill_in "Unit", with: @unit_attribute.unit
    fill_in "Value", with: @unit_attribute.value
    click_on "Update Unit attribute"

    assert_text "Unit attribute was successfully updated"
    click_on "Back"
  end

  test "should destroy Unit attribute" do
    visit unit_attribute_url(@unit_attribute)
    click_on "Destroy this unit attribute", match: :first

    assert_text "Unit attribute was successfully destroyed"
  end
end
