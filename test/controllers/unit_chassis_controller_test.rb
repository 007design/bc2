require "test_helper"

class UnitChassisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unit_chassi = unit_chassis(:one)
  end

  test "should get index" do
    get unit_chassis_url
    assert_response :success
  end

  test "should get new" do
    get new_unit_chassi_url
    assert_response :success
  end

  test "should create unit_chassi" do
    assert_difference("UnitChassi.count") do
      post unit_chassis_url, params: { unit_chassi: { chassis: @unit_chassi.chassis, unit: @unit_chassi.unit } }
    end

    assert_redirected_to unit_chassi_url(UnitChassi.last)
  end

  test "should show unit_chassi" do
    get unit_chassi_url(@unit_chassi)
    assert_response :success
  end

  test "should get edit" do
    get edit_unit_chassi_url(@unit_chassi)
    assert_response :success
  end

  test "should update unit_chassi" do
    patch unit_chassi_url(@unit_chassi), params: { unit_chassi: { chassis: @unit_chassi.chassis, unit: @unit_chassi.unit } }
    assert_redirected_to unit_chassi_url(@unit_chassi)
  end

  test "should destroy unit_chassi" do
    assert_difference("UnitChassi.count", -1) do
      delete unit_chassi_url(@unit_chassi)
    end

    assert_redirected_to unit_chassis_url
  end
end
