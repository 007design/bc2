require "application_system_test_case"

class ChassisTest < ApplicationSystemTestCase
  setup do
    @chassi = chassis(:one)
  end

  test "visiting the index" do
    visit chassis_url
    assert_selector "h1", text: "Chassis"
  end

  test "should create chassi" do
    visit chassis_url
    click_on "New chassi"

    fill_in "Name", with: @chassi.name
    click_on "Create Chassi"

    assert_text "Chassi was successfully created"
    click_on "Back"
  end

  test "should update Chassi" do
    visit chassi_url(@chassi)
    click_on "Edit this chassi", match: :first

    fill_in "Name", with: @chassi.name
    click_on "Update Chassi"

    assert_text "Chassi was successfully updated"
    click_on "Back"
  end

  test "should destroy Chassi" do
    visit chassi_url(@chassi)
    click_on "Destroy this chassi", match: :first

    assert_text "Chassi was successfully destroyed"
  end
end
