require "test_helper"

class UnitFactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unit_faction = unit_factions(:one)
  end

  test "should get index" do
    get unit_factions_url
    assert_response :success
  end

  test "should get new" do
    get new_unit_faction_url
    assert_response :success
  end

  test "should create unit_faction" do
    assert_difference("UnitFaction.count") do
      post unit_factions_url, params: { unit_faction: { faction: @unit_faction.faction, unit: @unit_faction.unit } }
    end

    assert_redirected_to unit_faction_url(UnitFaction.last)
  end

  test "should show unit_faction" do
    get unit_faction_url(@unit_faction)
    assert_response :success
  end

  test "should get edit" do
    get edit_unit_faction_url(@unit_faction)
    assert_response :success
  end

  test "should update unit_faction" do
    patch unit_faction_url(@unit_faction), params: { unit_faction: { faction: @unit_faction.faction, unit: @unit_faction.unit } }
    assert_redirected_to unit_faction_url(@unit_faction)
  end

  test "should destroy unit_faction" do
    assert_difference("UnitFaction.count", -1) do
      delete unit_faction_url(@unit_faction)
    end

    assert_redirected_to unit_factions_url
  end
end
