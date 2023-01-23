require "test_helper"

class OptionRoleRequirementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @option_role_requirement = option_role_requirements(:one)
  end

  test "should get index" do
    get option_role_requirements_url
    assert_response :success
  end

  test "should get new" do
    get new_option_role_requirement_url
    assert_response :success
  end

  test "should create option_role_requirement" do
    assert_difference("OptionRoleRequirement.count") do
      post option_role_requirements_url, params: { option_role_requirement: { max: @option_role_requirement.max, min: @option_role_requirement.min, option: @option_role_requirement.option, requirement: @option_role_requirement.requirement } }
    end

    assert_redirected_to option_role_requirement_url(OptionRoleRequirement.last)
  end

  test "should show option_role_requirement" do
    get option_role_requirement_url(@option_role_requirement)
    assert_response :success
  end

  test "should get edit" do
    get edit_option_role_requirement_url(@option_role_requirement)
    assert_response :success
  end

  test "should update option_role_requirement" do
    patch option_role_requirement_url(@option_role_requirement), params: { option_role_requirement: { max: @option_role_requirement.max, min: @option_role_requirement.min, option: @option_role_requirement.option, requirement: @option_role_requirement.requirement } }
    assert_redirected_to option_role_requirement_url(@option_role_requirement)
  end

  test "should destroy option_role_requirement" do
    assert_difference("OptionRoleRequirement.count", -1) do
      delete option_role_requirement_url(@option_role_requirement)
    end

    assert_redirected_to option_role_requirements_url
  end
end
