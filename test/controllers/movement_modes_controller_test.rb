require "test_helper"

class MovementModesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movement_mode = movement_modes(:one)
  end

  test "should get index" do
    get movement_modes_url
    assert_response :success
  end

  test "should get new" do
    get new_movement_mode_url
    assert_response :success
  end

  test "should create movement_mode" do
    assert_difference("MovementMode.count") do
      post movement_modes_url, params: { movement_mode: { name: @movement_mode.name } }
    end

    assert_redirected_to movement_mode_url(MovementMode.last)
  end

  test "should show movement_mode" do
    get movement_mode_url(@movement_mode)
    assert_response :success
  end

  test "should get edit" do
    get edit_movement_mode_url(@movement_mode)
    assert_response :success
  end

  test "should update movement_mode" do
    patch movement_mode_url(@movement_mode), params: { movement_mode: { name: @movement_mode.name } }
    assert_redirected_to movement_mode_url(@movement_mode)
  end

  test "should destroy movement_mode" do
    assert_difference("MovementMode.count", -1) do
      delete movement_mode_url(@movement_mode)
    end

    assert_redirected_to movement_modes_url
  end
end
