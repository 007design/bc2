require "application_system_test_case"

class OptionTraitUpgradesTest < ApplicationSystemTestCase
  setup do
    @option_trait_upgrade = option_trait_upgrades(:one)
  end

  test "visiting the index" do
    visit option_trait_upgrades_url
    assert_selector "h1", text: "Option trait upgrades"
  end

  test "should create option trait upgrade" do
    visit option_trait_upgrades_url
    click_on "New option trait upgrade"

    fill_in "Option", with: @option_trait_upgrade.option
    fill_in "Upgrade", with: @option_trait_upgrade.upgrade
    fill_in "Value", with: @option_trait_upgrade.value
    click_on "Create Option trait upgrade"

    assert_text "Option trait upgrade was successfully created"
    click_on "Back"
  end

  test "should update Option trait upgrade" do
    visit option_trait_upgrade_url(@option_trait_upgrade)
    click_on "Edit this option trait upgrade", match: :first

    fill_in "Option", with: @option_trait_upgrade.option
    fill_in "Upgrade", with: @option_trait_upgrade.upgrade
    fill_in "Value", with: @option_trait_upgrade.value
    click_on "Update Option trait upgrade"

    assert_text "Option trait upgrade was successfully updated"
    click_on "Back"
  end

  test "should destroy Option trait upgrade" do
    visit option_trait_upgrade_url(@option_trait_upgrade)
    click_on "Destroy this option trait upgrade", match: :first

    assert_text "Option trait upgrade was successfully destroyed"
  end
end
