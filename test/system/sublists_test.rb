require "application_system_test_case"

class SublistsTest < ApplicationSystemTestCase
  setup do
    @sublist = sublists(:one)
  end

  test "visiting the index" do
    visit sublists_url
    assert_selector "h1", text: "Sublists"
  end

  test "should create sublist" do
    visit sublists_url
    click_on "New sublist"

    fill_in "Faction", with: @sublist.faction
    fill_in "Name", with: @sublist.name
    click_on "Create Sublist"

    assert_text "Sublist was successfully created"
    click_on "Back"
  end

  test "should update Sublist" do
    visit sublist_url(@sublist)
    click_on "Edit this sublist", match: :first

    fill_in "Faction", with: @sublist.faction
    fill_in "Name", with: @sublist.name
    click_on "Update Sublist"

    assert_text "Sublist was successfully updated"
    click_on "Back"
  end

  test "should destroy Sublist" do
    visit sublist_url(@sublist)
    click_on "Destroy this sublist", match: :first

    assert_text "Sublist was successfully destroyed"
  end
end
