require "test_helper"

class OptionWeaponRequirementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @option_weapon_requirement = option_weapon_requirements(:one)
  end

  test "should get index" do
    get option_weapon_requirements_url
    assert_response :success
  end

  test "should get new" do
    get new_option_weapon_requirement_url
    assert_response :success
  end

  test "should create option_weapon_requirement" do
    assert_difference("OptionWeaponRequirement.count") do
      post option_weapon_requirements_url, params: { option_weapon_requirement: { option: @option_weapon_requirement.option, requirement: @option_weapon_requirement.requirement } }
    end

    assert_redirected_to option_weapon_requirement_url(OptionWeaponRequirement.last)
  end

  test "should show option_weapon_requirement" do
    get option_weapon_requirement_url(@option_weapon_requirement)
    assert_response :success
  end

  test "should get edit" do
    get edit_option_weapon_requirement_url(@option_weapon_requirement)
    assert_response :success
  end

  test "should update option_weapon_requirement" do
    patch option_weapon_requirement_url(@option_weapon_requirement), params: { option_weapon_requirement: { option: @option_weapon_requirement.option, requirement: @option_weapon_requirement.requirement } }
    assert_redirected_to option_weapon_requirement_url(@option_weapon_requirement)
  end

  test "should destroy option_weapon_requirement" do
    assert_difference("OptionWeaponRequirement.count", -1) do
      delete option_weapon_requirement_url(@option_weapon_requirement)
    end

    assert_redirected_to option_weapon_requirements_url
  end
end
