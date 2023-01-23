require "application_system_test_case"

class AttributeTypesTest < ApplicationSystemTestCase
  setup do
    @attribute_type = attribute_types(:one)
  end

  test "visiting the index" do
    visit attribute_types_url
    assert_selector "h1", text: "Attribute types"
  end

  test "should create attribute type" do
    visit attribute_types_url
    click_on "New attribute type"

    fill_in "Name", with: @attribute_type.name
    click_on "Create Attribute type"

    assert_text "Attribute type was successfully created"
    click_on "Back"
  end

  test "should update Attribute type" do
    visit attribute_type_url(@attribute_type)
    click_on "Edit this attribute type", match: :first

    fill_in "Name", with: @attribute_type.name
    click_on "Update Attribute type"

    assert_text "Attribute type was successfully updated"
    click_on "Back"
  end

  test "should destroy Attribute type" do
    visit attribute_type_url(@attribute_type)
    click_on "Destroy this attribute type", match: :first

    assert_text "Attribute type was successfully destroyed"
  end
end
