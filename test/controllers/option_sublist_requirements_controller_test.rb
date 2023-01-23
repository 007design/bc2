require "test_helper"

class OptionSublistRequirementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @option_sublist_requirement = option_sublist_requirements(:one)
  end

  test "should get index" do
    get option_sublist_requirements_url
    assert_response :success
  end

  test "should get new" do
    get new_option_sublist_requirement_url
    assert_response :success
  end

  test "should create option_sublist_requirement" do
    assert_difference("OptionSublistRequirement.count") do
      post option_sublist_requirements_url, params: { option_sublist_requirement: { max: @option_sublist_requirement.max, min: @option_sublist_requirement.min, option: @option_sublist_requirement.option, requirement: @option_sublist_requirement.requirement } }
    end

    assert_redirected_to option_sublist_requirement_url(OptionSublistRequirement.last)
  end

  test "should show option_sublist_requirement" do
    get option_sublist_requirement_url(@option_sublist_requirement)
    assert_response :success
  end

  test "should get edit" do
    get edit_option_sublist_requirement_url(@option_sublist_requirement)
    assert_response :success
  end

  test "should update option_sublist_requirement" do
    patch option_sublist_requirement_url(@option_sublist_requirement), params: { option_sublist_requirement: { max: @option_sublist_requirement.max, min: @option_sublist_requirement.min, option: @option_sublist_requirement.option, requirement: @option_sublist_requirement.requirement } }
    assert_redirected_to option_sublist_requirement_url(@option_sublist_requirement)
  end

  test "should destroy option_sublist_requirement" do
    assert_difference("OptionSublistRequirement.count", -1) do
      delete option_sublist_requirement_url(@option_sublist_requirement)
    end

    assert_redirected_to option_sublist_requirements_url
  end
end
