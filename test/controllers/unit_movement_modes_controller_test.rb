require "test_helper"

class UnitMovementModesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unit_movement_mode = unit_movement_modes(:one)
  end

  test "should get index" do
    get unit_movement_modes_url
    assert_response :success
  end

  test "should get new" do
    get new_unit_movement_mode_url
    assert_response :success
  end

  test "should create unit_movement_mode" do
    assert_difference("UnitMovementMode.count") do
      post unit_movement_modes_url, params: { unit_movement_mode: { movement_type: @unit_movement_mode.movement_type, unit: @unit_movement_mode.unit, value: @unit_movement_mode.value } }
    end

    assert_redirected_to unit_movement_mode_url(UnitMovementMode.last)
  end

  test "should show unit_movement_mode" do
    get unit_movement_mode_url(@unit_movement_mode)
    assert_response :success
  end

  test "should get edit" do
    get edit_unit_movement_mode_url(@unit_movement_mode)
    assert_response :success
  end

  test "should update unit_movement_mode" do
    patch unit_movement_mode_url(@unit_movement_mode), params: { unit_movement_mode: { movement_type: @unit_movement_mode.movement_type, unit: @unit_movement_mode.unit, value: @unit_movement_mode.value } }
    assert_redirected_to unit_movement_mode_url(@unit_movement_mode)
  end

  test "should destroy unit_movement_mode" do
    assert_difference("UnitMovementMode.count", -1) do
      delete unit_movement_mode_url(@unit_movement_mode)
    end

    assert_redirected_to unit_movement_modes_url
  end
end
