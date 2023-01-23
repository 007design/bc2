require "test_helper"

class ChassisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chassi = chassis(:one)
  end

  test "should get index" do
    get chassis_url
    assert_response :success
  end

  test "should get new" do
    get new_chassi_url
    assert_response :success
  end

  test "should create chassi" do
    assert_difference("Chassi.count") do
      post chassis_url, params: { chassi: { name: @chassi.name } }
    end

    assert_redirected_to chassi_url(Chassi.last)
  end

  test "should show chassi" do
    get chassi_url(@chassi)
    assert_response :success
  end

  test "should get edit" do
    get edit_chassi_url(@chassi)
    assert_response :success
  end

  test "should update chassi" do
    patch chassi_url(@chassi), params: { chassi: { name: @chassi.name } }
    assert_redirected_to chassi_url(@chassi)
  end

  test "should destroy chassi" do
    assert_difference("Chassi.count", -1) do
      delete chassi_url(@chassi)
    end

    assert_redirected_to chassis_url
  end
end
