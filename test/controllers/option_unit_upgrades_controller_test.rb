require "test_helper"

class OptionUnitUpgradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @option_unit_upgrade = option_unit_upgrades(:one)
  end

  test "should get index" do
    get option_unit_upgrades_url
    assert_response :success
  end

  test "should get new" do
    get new_option_unit_upgrade_url
    assert_response :success
  end

  test "should create option_unit_upgrade" do
    assert_difference("OptionUnitUpgrade.count") do
      post option_unit_upgrades_url, params: { option_unit_upgrade: { option: @option_unit_upgrade.option, upgrade: @option_unit_upgrade.upgrade } }
    end

    assert_redirected_to option_unit_upgrade_url(OptionUnitUpgrade.last)
  end

  test "should show option_unit_upgrade" do
    get option_unit_upgrade_url(@option_unit_upgrade)
    assert_response :success
  end

  test "should get edit" do
    get edit_option_unit_upgrade_url(@option_unit_upgrade)
    assert_response :success
  end

  test "should update option_unit_upgrade" do
    patch option_unit_upgrade_url(@option_unit_upgrade), params: { option_unit_upgrade: { option: @option_unit_upgrade.option, upgrade: @option_unit_upgrade.upgrade } }
    assert_redirected_to option_unit_upgrade_url(@option_unit_upgrade)
  end

  test "should destroy option_unit_upgrade" do
    assert_difference("OptionUnitUpgrade.count", -1) do
      delete option_unit_upgrade_url(@option_unit_upgrade)
    end

    assert_redirected_to option_unit_upgrades_url
  end
end
