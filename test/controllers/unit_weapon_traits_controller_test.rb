require "test_helper"

class UnitWeaponTraitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unit_weapon_trait = unit_weapon_traits(:one)
  end

  test "should get index" do
    get unit_weapon_traits_url
    assert_response :success
  end

  test "should get new" do
    get new_unit_weapon_trait_url
    assert_response :success
  end

  test "should create unit_weapon_trait" do
    assert_difference("UnitWeaponTrait.count") do
      post unit_weapon_traits_url, params: { unit_weapon_trait: { trait: @unit_weapon_trait.trait, unit_weapon: @unit_weapon_trait.unit_weapon, value: @unit_weapon_trait.value } }
    end

    assert_redirected_to unit_weapon_trait_url(UnitWeaponTrait.last)
  end

  test "should show unit_weapon_trait" do
    get unit_weapon_trait_url(@unit_weapon_trait)
    assert_response :success
  end

  test "should get edit" do
    get edit_unit_weapon_trait_url(@unit_weapon_trait)
    assert_response :success
  end

  test "should update unit_weapon_trait" do
    patch unit_weapon_trait_url(@unit_weapon_trait), params: { unit_weapon_trait: { trait: @unit_weapon_trait.trait, unit_weapon: @unit_weapon_trait.unit_weapon, value: @unit_weapon_trait.value } }
    assert_redirected_to unit_weapon_trait_url(@unit_weapon_trait)
  end

  test "should destroy unit_weapon_trait" do
    assert_difference("UnitWeaponTrait.count", -1) do
      delete unit_weapon_trait_url(@unit_weapon_trait)
    end

    assert_redirected_to unit_weapon_traits_url
  end
end
