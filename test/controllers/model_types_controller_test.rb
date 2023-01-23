require "test_helper"

class ModelTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @model_type = model_types(:one)
  end

  test "should get index" do
    get model_types_url
    assert_response :success
  end

  test "should get new" do
    get new_model_type_url
    assert_response :success
  end

  test "should create model_type" do
    assert_difference("ModelType.count") do
      post model_types_url, params: { model_type: { name: @model_type.name } }
    end

    assert_redirected_to model_type_url(ModelType.last)
  end

  test "should show model_type" do
    get model_type_url(@model_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_model_type_url(@model_type)
    assert_response :success
  end

  test "should update model_type" do
    patch model_type_url(@model_type), params: { model_type: { name: @model_type.name } }
    assert_redirected_to model_type_url(@model_type)
  end

  test "should destroy model_type" do
    assert_difference("ModelType.count", -1) do
      delete model_type_url(@model_type)
    end

    assert_redirected_to model_types_url
  end
end
