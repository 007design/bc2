require "test_helper"

class OptionOptionRequirementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @option_option_requirement = option_option_requirements(:one)
  end

  test "should get index" do
    get option_option_requirements_url
    assert_response :success
  end

  test "should get new" do
    get new_option_option_requirement_url
    assert_response :success
  end

  test "should create option_option_requirement" do
    assert_difference("OptionOptionRequirement.count") do
      post option_option_requirements_url, params: { option_option_requirement: { max: @option_option_requirement.max, min: @option_option_requirement.min, option: @option_option_requirement.option, requirement: @option_option_requirement.requirement } }
    end

    assert_redirected_to option_option_requirement_url(OptionOptionRequirement.last)
  end

  test "should show option_option_requirement" do
    get option_option_requirement_url(@option_option_requirement)
    assert_response :success
  end

  test "should get edit" do
    get edit_option_option_requirement_url(@option_option_requirement)
    assert_response :success
  end

  test "should update option_option_requirement" do
    patch option_option_requirement_url(@option_option_requirement), params: { option_option_requirement: { max: @option_option_requirement.max, min: @option_option_requirement.min, option: @option_option_requirement.option, requirement: @option_option_requirement.requirement } }
    assert_redirected_to option_option_requirement_url(@option_option_requirement)
  end

  test "should destroy option_option_requirement" do
    assert_difference("OptionOptionRequirement.count", -1) do
      delete option_option_requirement_url(@option_option_requirement)
    end

    assert_redirected_to option_option_requirements_url
  end
end
