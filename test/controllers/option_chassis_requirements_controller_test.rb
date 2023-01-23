require "test_helper"

class OptionChassisRequirementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @option_chassis_requirement = option_chassis_requirements(:one)
  end

  test "should get index" do
    get option_chassis_requirements_url
    assert_response :success
  end

  test "should get new" do
    get new_option_chassis_requirement_url
    assert_response :success
  end

  test "should create option_chassis_requirement" do
    assert_difference("OptionChassisRequirement.count") do
      post option_chassis_requirements_url, params: { option_chassis_requirement: { option: @option_chassis_requirement.option, requirement: @option_chassis_requirement.requirement } }
    end

    assert_redirected_to option_chassis_requirement_url(OptionChassisRequirement.last)
  end

  test "should show option_chassis_requirement" do
    get option_chassis_requirement_url(@option_chassis_requirement)
    assert_response :success
  end

  test "should get edit" do
    get edit_option_chassis_requirement_url(@option_chassis_requirement)
    assert_response :success
  end

  test "should update option_chassis_requirement" do
    patch option_chassis_requirement_url(@option_chassis_requirement), params: { option_chassis_requirement: { option: @option_chassis_requirement.option, requirement: @option_chassis_requirement.requirement } }
    assert_redirected_to option_chassis_requirement_url(@option_chassis_requirement)
  end

  test "should destroy option_chassis_requirement" do
    assert_difference("OptionChassisRequirement.count", -1) do
      delete option_chassis_requirement_url(@option_chassis_requirement)
    end

    assert_redirected_to option_chassis_requirements_url
  end
end
