require "application_system_test_case"

class OptionUnitUpgradesTest < ApplicationSystemTestCase
  setup do
    @option_unit_upgrade = option_unit_upgrades(:one)
  end

  test "visiting the index" do
    visit option_unit_upgrades_url
    assert_selector "h1", text: "Option unit upgrades"
  end

  test "should create option unit upgrade" do
    visit option_unit_upgrades_url
    click_on "New option unit upgrade"

    fill_in "Option", with: @option_unit_upgrade.option
    fill_in "Upgrade", with: @option_unit_upgrade.upgrade
    click_on "Create Option unit upgrade"

    assert_text "Option unit upgrade was successfully created"
    click_on "Back"
  end

  test "should update Option unit upgrade" do
    visit option_unit_upgrade_url(@option_unit_upgrade)
    click_on "Edit this option unit upgrade", match: :first

    fill_in "Option", with: @option_unit_upgrade.option
    fill_in "Upgrade", with: @option_unit_upgrade.upgrade
    click_on "Update Option unit upgrade"

    assert_text "Option unit upgrade was successfully updated"
    click_on "Back"
  end

  test "should destroy Option unit upgrade" do
    visit option_unit_upgrade_url(@option_unit_upgrade)
    click_on "Destroy this option unit upgrade", match: :first

    assert_text "Option unit upgrade was successfully destroyed"
  end
end
