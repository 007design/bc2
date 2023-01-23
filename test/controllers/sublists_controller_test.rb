require "test_helper"

class SublistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sublist = sublists(:one)
  end

  test "should get index" do
    get sublists_url
    assert_response :success
  end

  test "should get new" do
    get new_sublist_url
    assert_response :success
  end

  test "should create sublist" do
    assert_difference("Sublist.count") do
      post sublists_url, params: { sublist: { faction: @sublist.faction, name: @sublist.name } }
    end

    assert_redirected_to sublist_url(Sublist.last)
  end

  test "should show sublist" do
    get sublist_url(@sublist)
    assert_response :success
  end

  test "should get edit" do
    get edit_sublist_url(@sublist)
    assert_response :success
  end

  test "should update sublist" do
    patch sublist_url(@sublist), params: { sublist: { faction: @sublist.faction, name: @sublist.name } }
    assert_redirected_to sublist_url(@sublist)
  end

  test "should destroy sublist" do
    assert_difference("Sublist.count", -1) do
      delete sublist_url(@sublist)
    end

    assert_redirected_to sublists_url
  end
end
