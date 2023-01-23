require "application_system_test_case"

class OptionsTest < ApplicationSystemTestCase
  setup do
    @option = options(:one)
  end

  test "visiting the index" do
    visit options_url
    assert_selector "h1", text: "Options"
  end

  test "should create option" do
    visit options_url
    click_on "New option"

    fill_in "Armymax", with: @option.armymax
    fill_in "Cgmax", with: @option.cgmax
    fill_in "Description", with: @option.description
    fill_in "Name", with: @option.name
    fill_in "Tv", with: @option.tv
    fill_in "Type", with: @option.type
    click_on "Create Option"

    assert_text "Option was successfully created"
    click_on "Back"
  end

  test "should update Option" do
    visit option_url(@option)
    click_on "Edit this option", match: :first

    fill_in "Armymax", with: @option.armymax
    fill_in "Cgmax", with: @option.cgmax
    fill_in "Description", with: @option.description
    fill_in "Name", with: @option.name
    fill_in "Tv", with: @option.tv
    fill_in "Type", with: @option.type
    click_on "Update Option"

    assert_text "Option was successfully updated"
    click_on "Back"
  end

  test "should destroy Option" do
    visit option_url(@option)
    click_on "Destroy this option", match: :first

    assert_text "Option was successfully destroyed"
  end
end
