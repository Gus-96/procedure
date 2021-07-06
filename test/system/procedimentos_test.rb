require "application_system_test_case"

class ProcedimentosTest < ApplicationSystemTestCase
  setup do
    @procedimento = procedimentos(:one)
  end

  test "visiting the index" do
    visit procedimentos_url
    assert_selector "h1", text: "Procedimentos"
  end

  test "creating a Procedimento" do
    visit procedimentos_url
    click_on "New Procedimento"

    fill_in "Description", with: @procedimento.description
    fill_in "Title", with: @procedimento.title
    click_on "Create Procedimento"

    assert_text "Procedimento was successfully created"
    click_on "Back"
  end

  test "updating a Procedimento" do
    visit procedimentos_url
    click_on "Edit", match: :first

    fill_in "Description", with: @procedimento.description
    fill_in "Title", with: @procedimento.title
    click_on "Update Procedimento"

    assert_text "Procedimento was successfully updated"
    click_on "Back"
  end

  test "destroying a Procedimento" do
    visit procedimentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Procedimento was successfully destroyed"
  end
end
