require "test_helper"

class OptionTraitUpgradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @option_trait_upgrade = option_trait_upgrades(:one)
  end

  test "should get index" do
    get option_trait_upgrades_url
    assert_response :success
  end

  test "should get new" do
    get new_option_trait_upgrade_url
    assert_response :success
  end

  test "should create option_trait_upgrade" do
    assert_difference("OptionTraitUpgrade.count") do
      post option_trait_upgrades_url, params: { option_trait_upgrade: { option: @option_trait_upgrade.option, upgrade: @option_trait_upgrade.upgrade, value: @option_trait_upgrade.value } }
    end

    assert_redirected_to option_trait_upgrade_url(OptionTraitUpgrade.last)
  end

  test "should show option_trait_upgrade" do
    get option_trait_upgrade_url(@option_trait_upgrade)
    assert_response :success
  end

  test "should get edit" do
    get edit_option_trait_upgrade_url(@option_trait_upgrade)
    assert_response :success
  end

  test "should update option_trait_upgrade" do
    patch option_trait_upgrade_url(@option_trait_upgrade), params: { option_trait_upgrade: { option: @option_trait_upgrade.option, upgrade: @option_trait_upgrade.upgrade, value: @option_trait_upgrade.value } }
    assert_redirected_to option_trait_upgrade_url(@option_trait_upgrade)
  end

  test "should destroy option_trait_upgrade" do
    assert_difference("OptionTraitUpgrade.count", -1) do
      delete option_trait_upgrade_url(@option_trait_upgrade)
    end

    assert_redirected_to option_trait_upgrades_url
  end
end
