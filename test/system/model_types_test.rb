require "application_system_test_case"

class ModelTypesTest < ApplicationSystemTestCase
  setup do
    @model_type = model_types(:one)
  end

  test "visiting the index" do
    visit model_types_url
    assert_selector "h1", text: "Model types"
  end

  test "should create model type" do
    visit model_types_url
    click_on "New model type"

    fill_in "Name", with: @model_type.name
    click_on "Create Model type"

    assert_text "Model type was successfully created"
    click_on "Back"
  end

  test "should update Model type" do
    visit model_type_url(@model_type)
    click_on "Edit this model type", match: :first

    fill_in "Name", with: @model_type.name
    click_on "Update Model type"

    assert_text "Model type was successfully updated"
    click_on "Back"
  end

  test "should destroy Model type" do
    visit model_type_url(@model_type)
    click_on "Destroy this model type", match: :first

    assert_text "Model type was successfully destroyed"
  end
end
