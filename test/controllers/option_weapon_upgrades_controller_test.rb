require "test_helper"

class OptionWeaponUpgradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @option_weapon_upgrade = option_weapon_upgrades(:one)
  end

  test "should get index" do
    get option_weapon_upgrades_url
    assert_response :success
  end

  test "should get new" do
    get new_option_weapon_upgrade_url
    assert_response :success
  end

  test "should create option_weapon_upgrade" do
    assert_difference("OptionWeaponUpgrade.count") do
      post option_weapon_upgrades_url, params: { option_weapon_upgrade: { option: @option_weapon_upgrade.option, upgrade: @option_weapon_upgrade.upgrade } }
    end

    assert_redirected_to option_weapon_upgrade_url(OptionWeaponUpgrade.last)
  end

  test "should show option_weapon_upgrade" do
    get option_weapon_upgrade_url(@option_weapon_upgrade)
    assert_response :success
  end

  test "should get edit" do
    get edit_option_weapon_upgrade_url(@option_weapon_upgrade)
    assert_response :success
  end

  test "should update option_weapon_upgrade" do
    patch option_weapon_upgrade_url(@option_weapon_upgrade), params: { option_weapon_upgrade: { option: @option_weapon_upgrade.option, upgrade: @option_weapon_upgrade.upgrade } }
    assert_redirected_to option_weapon_upgrade_url(@option_weapon_upgrade)
  end

  test "should destroy option_weapon_upgrade" do
    assert_difference("OptionWeaponUpgrade.count", -1) do
      delete option_weapon_upgrade_url(@option_weapon_upgrade)
    end

    assert_redirected_to option_weapon_upgrades_url
  end
end
