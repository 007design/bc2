require "test_helper"

class OptionTraitRequirementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @option_trait_requirement = option_trait_requirements(:one)
  end

  test "should get index" do
    get option_trait_requirements_url
    assert_response :success
  end

  test "should get new" do
    get new_option_trait_requirement_url
    assert_response :success
  end

  test "should create option_trait_requirement" do
    assert_difference("OptionTraitRequirement.count") do
      post option_trait_requirements_url, params: { option_trait_requirement: { option: @option_trait_requirement.option, requirement: @option_trait_requirement.requirement } }
    end

    assert_redirected_to option_trait_requirement_url(OptionTraitRequirement.last)
  end

  test "should show option_trait_requirement" do
    get option_trait_requirement_url(@option_trait_requirement)
    assert_response :success
  end

  test "should get edit" do
    get edit_option_trait_requirement_url(@option_trait_requirement)
    assert_response :success
  end

  test "should update option_trait_requirement" do
    patch option_trait_requirement_url(@option_trait_requirement), params: { option_trait_requirement: { option: @option_trait_requirement.option, requirement: @option_trait_requirement.requirement } }
    assert_redirected_to option_trait_requirement_url(@option_trait_requirement)
  end

  test "should destroy option_trait_requirement" do
    assert_difference("OptionTraitRequirement.count", -1) do
      delete option_trait_requirement_url(@option_trait_requirement)
    end

    assert_redirected_to option_trait_requirements_url
  end
end
