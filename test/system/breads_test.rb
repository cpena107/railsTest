require "application_system_test_case"

class BreadsTest < ApplicationSystemTestCase
  setup do
    @bread = breads(:one)
  end

  test "visiting the index" do
    visit breads_url
    assert_selector "h1", text: "Breads"
  end

  test "should create bread" do
    visit breads_url
    click_on "New bread"

    check "Baked" if @bread.baked
    fill_in "Name", with: @bread.name
    click_on "Create Bread"

    assert_text "Bread was successfully created"
    click_on "Back"
  end

  test "should update Bread" do
    visit bread_url(@bread)
    click_on "Edit this bread", match: :first

    check "Baked" if @bread.baked
    fill_in "Name", with: @bread.name
    click_on "Update Bread"

    assert_text "Bread was successfully updated"
    click_on "Back"
  end

  test "should destroy Bread" do
    visit bread_url(@bread)
    click_on "Destroy this bread", match: :first

    assert_text "Bread was successfully destroyed"
  end
end
