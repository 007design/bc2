require "application_system_test_case"

class UnitTraitsTest < ApplicationSystemTestCase
  setup do
    @unit_trait = unit_traits(:one)
  end

  test "visiting the index" do
    visit unit_traits_url
    assert_selector "h1", text: "Unit traits"
  end

  test "should create unit trait" do
    visit unit_traits_url
    click_on "New unit trait"

    fill_in "Trait", with: @unit_trait.trait
    fill_in "Unit", with: @unit_trait.unit
    fill_in "Value", with: @unit_trait.value
    click_on "Create Unit trait"

    assert_text "Unit trait was successfully created"
    click_on "Back"
  end

  test "should update Unit trait" do
    visit unit_trait_url(@unit_trait)
    click_on "Edit this unit trait", match: :first

    fill_in "Trait", with: @unit_trait.trait
    fill_in "Unit", with: @unit_trait.unit
    fill_in "Value", with: @unit_trait.value
    click_on "Update Unit trait"

    assert_text "Unit trait was successfully updated"
    click_on "Back"
  end

  test "should destroy Unit trait" do
    visit unit_trait_url(@unit_trait)
    click_on "Destroy this unit trait", match: :first

    assert_text "Unit trait was successfully destroyed"
  end
end
