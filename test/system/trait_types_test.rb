require "application_system_test_case"

class TraitTypesTest < ApplicationSystemTestCase
  setup do
    @trait_type = trait_types(:one)
  end

  test "visiting the index" do
    visit trait_types_url
    assert_selector "h1", text: "Trait types"
  end

  test "should create trait type" do
    visit trait_types_url
    click_on "New trait type"

    fill_in "Type", with: @trait_type.type
    click_on "Create Trait type"

    assert_text "Trait type was successfully created"
    click_on "Back"
  end

  test "should update Trait type" do
    visit trait_type_url(@trait_type)
    click_on "Edit this trait type", match: :first

    fill_in "Type", with: @trait_type.type
    click_on "Update Trait type"

    assert_text "Trait type was successfully updated"
    click_on "Back"
  end

  test "should destroy Trait type" do
    visit trait_type_url(@trait_type)
    click_on "Destroy this trait type", match: :first

    assert_text "Trait type was successfully destroyed"
  end
end
