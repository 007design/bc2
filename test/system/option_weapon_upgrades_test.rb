require "application_system_test_case"

class OptionWeaponUpgradesTest < ApplicationSystemTestCase
  setup do
    @option_weapon_upgrade = option_weapon_upgrades(:one)
  end

  test "visiting the index" do
    visit option_weapon_upgrades_url
    assert_selector "h1", text: "Option weapon upgrades"
  end

  test "should create option weapon upgrade" do
    visit option_weapon_upgrades_url
    click_on "New option weapon upgrade"

    fill_in "Option", with: @option_weapon_upgrade.option
    fill_in "Upgrade", with: @option_weapon_upgrade.upgrade
    click_on "Create Option weapon upgrade"

    assert_text "Option weapon upgrade was successfully created"
    click_on "Back"
  end

  test "should update Option weapon upgrade" do
    visit option_weapon_upgrade_url(@option_weapon_upgrade)
    click_on "Edit this option weapon upgrade", match: :first

    fill_in "Option", with: @option_weapon_upgrade.option
    fill_in "Upgrade", with: @option_weapon_upgrade.upgrade
    click_on "Update Option weapon upgrade"

    assert_text "Option weapon upgrade was successfully updated"
    click_on "Back"
  end

  test "should destroy Option weapon upgrade" do
    visit option_weapon_upgrade_url(@option_weapon_upgrade)
    click_on "Destroy this option weapon upgrade", match: :first

    assert_text "Option weapon upgrade was successfully destroyed"
  end
end
