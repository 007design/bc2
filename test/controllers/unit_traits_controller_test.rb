require "test_helper"

class UnitTraitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unit_trait = unit_traits(:one)
  end

  test "should get index" do
    get unit_traits_url
    assert_response :success
  end

  test "should get new" do
    get new_unit_trait_url
    assert_response :success
  end

  test "should create unit_trait" do
    assert_difference("UnitTrait.count") do
      post unit_traits_url, params: { unit_trait: { trait: @unit_trait.trait, unit: @unit_trait.unit, value: @unit_trait.value } }
    end

    assert_redirected_to unit_trait_url(UnitTrait.last)
  end

  test "should show unit_trait" do
    get unit_trait_url(@unit_trait)
    assert_response :success
  end

  test "should get edit" do
    get edit_unit_trait_url(@unit_trait)
    assert_response :success
  end

  test "should update unit_trait" do
    patch unit_trait_url(@unit_trait), params: { unit_trait: { trait: @unit_trait.trait, unit: @unit_trait.unit, value: @unit_trait.value } }
    assert_redirected_to unit_trait_url(@unit_trait)
  end

  test "should destroy unit_trait" do
    assert_difference("UnitTrait.count", -1) do
      delete unit_trait_url(@unit_trait)
    end

    assert_redirected_to unit_traits_url
  end
end
