require "application_system_test_case"

class AffidavitOfAuthenticitiesTest < ApplicationSystemTestCase
  setup do
    @affidavit_of_authenticity = affidavit_of_authenticities(:one)
  end

  test "visiting the index" do
    visit affidavit_of_authenticities_url
    assert_selector "h1", text: "Affidavit Of Authenticities"
  end

  test "creating a Affidavit of authenticity" do
    visit affidavit_of_authenticities_url
    click_on "New Affidavit Of Authenticity"

    fill_in "Address", with: @affidavit_of_authenticity.address
    fill_in "First name", with: @affidavit_of_authenticity.first_name
    fill_in "Last name", with: @affidavit_of_authenticity.last_name
    click_on "Create Affidavit of authenticity"

    assert_text "Affidavit of authenticity was successfully created"
    click_on "Back"
  end

  test "updating a Affidavit of authenticity" do
    visit affidavit_of_authenticities_url
    click_on "Edit", match: :first

    fill_in "Address", with: @affidavit_of_authenticity.address
    fill_in "First name", with: @affidavit_of_authenticity.first_name
    fill_in "Last name", with: @affidavit_of_authenticity.last_name
    click_on "Update Affidavit of authenticity"

    assert_text "Affidavit of authenticity was successfully updated"
    click_on "Back"
  end

  test "destroying a Affidavit of authenticity" do
    visit affidavit_of_authenticities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Affidavit of authenticity was successfully destroyed"
  end
end
