require "test_helper"

class UnitWeaponsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unit_weapon = unit_weapons(:one)
  end

  test "should get index" do
    get unit_weapons_url
    assert_response :success
  end

  test "should get new" do
    get new_unit_weapon_url
    assert_response :success
  end

  test "should create unit_weapon" do
    assert_difference("UnitWeapon.count") do
      post unit_weapons_url, params: { unit_weapon: { type: @unit_weapon.type, unit: @unit_weapon.unit, weapon: @unit_weapon.weapon } }
    end

    assert_redirected_to unit_weapon_url(UnitWeapon.last)
  end

  test "should show unit_weapon" do
    get unit_weapon_url(@unit_weapon)
    assert_response :success
  end

  test "should get edit" do
    get edit_unit_weapon_url(@unit_weapon)
    assert_response :success
  end

  test "should update unit_weapon" do
    patch unit_weapon_url(@unit_weapon), params: { unit_weapon: { type: @unit_weapon.type, unit: @unit_weapon.unit, weapon: @unit_weapon.weapon } }
    assert_redirected_to unit_weapon_url(@unit_weapon)
  end

  test "should destroy unit_weapon" do
    assert_difference("UnitWeapon.count", -1) do
      delete unit_weapon_url(@unit_weapon)
    end

    assert_redirected_to unit_weapons_url
  end
end
