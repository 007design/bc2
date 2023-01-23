require "test_helper"

class OptionFactionRequirementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @option_faction_requirement = option_faction_requirements(:one)
  end

  test "should get index" do
    get option_faction_requirements_url
    assert_response :success
  end

  test "should get new" do
    get new_option_faction_requirement_url
    assert_response :success
  end

  test "should create option_faction_requirement" do
    assert_difference("OptionFactionRequirement.count") do
      post option_faction_requirements_url, params: { option_faction_requirement: { option: @option_faction_requirement.option, requirement: @option_faction_requirement.requirement } }
    end

    assert_redirected_to option_faction_requirement_url(OptionFactionRequirement.last)
  end

  test "should show option_faction_requirement" do
    get option_faction_requirement_url(@option_faction_requirement)
    assert_response :success
  end

  test "should get edit" do
    get edit_option_faction_requirement_url(@option_faction_requirement)
    assert_response :success
  end

  test "should update option_faction_requirement" do
    patch option_faction_requirement_url(@option_faction_requirement), params: { option_faction_requirement: { option: @option_faction_requirement.option, requirement: @option_faction_requirement.requirement } }
    assert_redirected_to option_faction_requirement_url(@option_faction_requirement)
  end

  test "should destroy option_faction_requirement" do
    assert_difference("OptionFactionRequirement.count", -1) do
      delete option_faction_requirement_url(@option_faction_requirement)
    end

    assert_redirected_to option_faction_requirements_url
  end
end
