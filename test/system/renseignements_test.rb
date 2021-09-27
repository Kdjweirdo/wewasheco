require "application_system_test_case"

class RenseignementsTest < ApplicationSystemTestCase
  setup do
    @renseignement = renseignements(:one)
  end

  test "visiting the index" do
    visit renseignements_url
    assert_selector "h1", text: "Renseignements"
  end

  test "creating a Renseignement" do
    visit renseignements_url
    click_on "New Renseignement"

    fill_in "Description", with: @renseignement.description
    fill_in "Email", with: @renseignement.email
    fill_in "Entreprise", with: @renseignement.entreprise
    fill_in "Numero", with: @renseignement.numero
    fill_in "Particulier", with: @renseignement.particulier
    fill_in "String", with: @renseignement.string
    fill_in "Text", with: @renseignement.text
    click_on "Create Renseignement"

    assert_text "Renseignement was successfully created"
    click_on "Back"
  end

  test "updating a Renseignement" do
    visit renseignements_url
    click_on "Edit", match: :first

    fill_in "Description", with: @renseignement.description
    fill_in "Email", with: @renseignement.email
    fill_in "Entreprise", with: @renseignement.entreprise
    fill_in "Numero", with: @renseignement.numero
    fill_in "Particulier", with: @renseignement.particulier
    fill_in "String", with: @renseignement.string
    fill_in "Text", with: @renseignement.text
    click_on "Update Renseignement"

    assert_text "Renseignement was successfully updated"
    click_on "Back"
  end

  test "destroying a Renseignement" do
    visit renseignements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Renseignement was successfully destroyed"
  end
end
