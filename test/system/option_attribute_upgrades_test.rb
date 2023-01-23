require "application_system_test_case"

class OptionAttributeUpgradesTest < ApplicationSystemTestCase
  setup do
    @option_attribute_upgrade = option_attribute_upgrades(:one)
  end

  test "visiting the index" do
    visit option_attribute_upgrades_url
    assert_selector "h1", text: "Option attribute upgrades"
  end

  test "should create option attribute upgrade" do
    visit option_attribute_upgrades_url
    click_on "New option attribute upgrade"

    fill_in "Option", with: @option_attribute_upgrade.option
    fill_in "Upgrade", with: @option_attribute_upgrade.upgrade
    fill_in "Value", with: @option_attribute_upgrade.value
    click_on "Create Option attribute upgrade"

    assert_text "Option attribute upgrade was successfully created"
    click_on "Back"
  end

  test "should update Option attribute upgrade" do
    visit option_attribute_upgrade_url(@option_attribute_upgrade)
    click_on "Edit this option attribute upgrade", match: :first

    fill_in "Option", with: @option_attribute_upgrade.option
    fill_in "Upgrade", with: @option_attribute_upgrade.upgrade
    fill_in "Value", with: @option_attribute_upgrade.value
    click_on "Update Option attribute upgrade"

    assert_text "Option attribute upgrade was successfully updated"
    click_on "Back"
  end

  test "should destroy Option attribute upgrade" do
    visit option_attribute_upgrade_url(@option_attribute_upgrade)
    click_on "Destroy this option attribute upgrade", match: :first

    assert_text "Option attribute upgrade was successfully destroyed"
  end
end
