require "test_helper"

class TraitTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trait_type = trait_types(:one)
  end

  test "should get index" do
    get trait_types_url
    assert_response :success
  end

  test "should get new" do
    get new_trait_type_url
    assert_response :success
  end

  test "should create trait_type" do
    assert_difference("TraitType.count") do
      post trait_types_url, params: { trait_type: { type: @trait_type.type } }
    end

    assert_redirected_to trait_type_url(TraitType.last)
  end

  test "should show trait_type" do
    get trait_type_url(@trait_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_trait_type_url(@trait_type)
    assert_response :success
  end

  test "should update trait_type" do
    patch trait_type_url(@trait_type), params: { trait_type: { type: @trait_type.type } }
    assert_redirected_to trait_type_url(@trait_type)
  end

  test "should destroy trait_type" do
    assert_difference("TraitType.count", -1) do
      delete trait_type_url(@trait_type)
    end

    assert_redirected_to trait_types_url
  end
end
