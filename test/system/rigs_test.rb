require "application_system_test_case"

class RigsTest < ApplicationSystemTestCase
  setup do
    @rig = rigs(:one)
  end

  test "visiting the index" do
    visit rigs_url
    assert_selector "h1", text: "Rigs"
  end

  test "creating a Rig" do
    visit rigs_url
    click_on "New Rig"

    fill_in "Description", with: @rig.description
    fill_in "Name", with: @rig.name
    click_on "Create Rig"

    assert_text "Rig was successfully created"
    click_on "Back"
  end

  test "updating a Rig" do
    visit rigs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @rig.description
    fill_in "Name", with: @rig.name
    click_on "Update Rig"

    assert_text "Rig was successfully updated"
    click_on "Back"
  end

  test "destroying a Rig" do
    visit rigs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rig was successfully destroyed"
  end
end
