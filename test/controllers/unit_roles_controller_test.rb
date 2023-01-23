require "test_helper"

class UnitRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unit_role = unit_roles(:one)
  end

  test "should get index" do
    get unit_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_unit_role_url
    assert_response :success
  end

  test "should create unit_role" do
    assert_difference("UnitRole.count") do
      post unit_roles_url, params: { unit_role: { role: @unit_role.role, unit: @unit_role.unit } }
    end

    assert_redirected_to unit_role_url(UnitRole.last)
  end

  test "should show unit_role" do
    get unit_role_url(@unit_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_unit_role_url(@unit_role)
    assert_response :success
  end

  test "should update unit_role" do
    patch unit_role_url(@unit_role), params: { unit_role: { role: @unit_role.role, unit: @unit_role.unit } }
    assert_redirected_to unit_role_url(@unit_role)
  end

  test "should destroy unit_role" do
    assert_difference("UnitRole.count", -1) do
      delete unit_role_url(@unit_role)
    end

    assert_redirected_to unit_roles_url
  end
end
