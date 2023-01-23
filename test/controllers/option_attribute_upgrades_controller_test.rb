require "test_helper"

class OptionAttributeUpgradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @option_attribute_upgrade = option_attribute_upgrades(:one)
  end

  test "should get index" do
    get option_attribute_upgrades_url
    assert_response :success
  end

  test "should get new" do
    get new_option_attribute_upgrade_url
    assert_response :success
  end

  test "should create option_attribute_upgrade" do
    assert_difference("OptionAttributeUpgrade.count") do
      post option_attribute_upgrades_url, params: { option_attribute_upgrade: { option: @option_attribute_upgrade.option, upgrade: @option_attribute_upgrade.upgrade, value: @option_attribute_upgrade.value } }
    end

    assert_redirected_to option_attribute_upgrade_url(OptionAttributeUpgrade.last)
  end

  test "should show option_attribute_upgrade" do
    get option_attribute_upgrade_url(@option_attribute_upgrade)
    assert_response :success
  end

  test "should get edit" do
    get edit_option_attribute_upgrade_url(@option_attribute_upgrade)
    assert_response :success
  end

  test "should update option_attribute_upgrade" do
    patch option_attribute_upgrade_url(@option_attribute_upgrade), params: { option_attribute_upgrade: { option: @option_attribute_upgrade.option, upgrade: @option_attribute_upgrade.upgrade, value: @option_attribute_upgrade.value } }
    assert_redirected_to option_attribute_upgrade_url(@option_attribute_upgrade)
  end

  test "should destroy option_attribute_upgrade" do
    assert_difference("OptionAttributeUpgrade.count", -1) do
      delete option_attribute_upgrade_url(@option_attribute_upgrade)
    end

    assert_redirected_to option_attribute_upgrades_url
  end
end
