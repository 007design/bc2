require "test_helper"

class UnitModelTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unit_model_type = unit_model_types(:one)
  end

  test "should get index" do
    get unit_model_types_url
    assert_response :success
  end

  test "should get new" do
    get new_unit_model_type_url
    assert_response :success
  end

  test "should create unit_model_type" do
    assert_difference("UnitModelType.count") do
      post unit_model_types_url, params: { unit_model_type: { model_type: @unit_model_type.model_type, unit: @unit_model_type.unit } }
    end

    assert_redirected_to unit_model_type_url(UnitModelType.last)
  end

  test "should show unit_model_type" do
    get unit_model_type_url(@unit_model_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_unit_model_type_url(@unit_model_type)
    assert_response :success
  end

  test "should update unit_model_type" do
    patch unit_model_type_url(@unit_model_type), params: { unit_model_type: { model_type: @unit_model_type.model_type, unit: @unit_model_type.unit } }
    assert_redirected_to unit_model_type_url(@unit_model_type)
  end

  test "should destroy unit_model_type" do
    assert_difference("UnitModelType.count", -1) do
      delete unit_model_type_url(@unit_model_type)
    end

    assert_redirected_to unit_model_types_url
  end
end
