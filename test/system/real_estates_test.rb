require "application_system_test_case"

class RealEstatesTest < ApplicationSystemTestCase
  setup do
    @real_estate = real_estates(:one)
  end

  test "visiting the index" do
    visit real_estates_url
    assert_selector "h1", text: "Real Estates"
  end

  test "creating a Real estate" do
    visit real_estates_url
    click_on "New Real Estate"

    fill_in "Bathroom", with: @real_estate.bathroom
    fill_in "Bedroom", with: @real_estate.bedroom
    fill_in "Carport", with: @real_estate.carport
    fill_in "Floor area", with: @real_estate.floor_area
    fill_in "Image", with: @real_estate.image
    fill_in "Land area", with: @real_estate.land_area
    fill_in "Object", with: @real_estate.object
    fill_in "Offer type", with: @real_estate.offer_type
    fill_in "Town and province", with: @real_estate.town_and_province
    click_on "Create Real estate"

    assert_text "Real estate was successfully created"
    click_on "Back"
  end

  test "updating a Real estate" do
    visit real_estates_url
    click_on "Edit", match: :first

    fill_in "Bathroom", with: @real_estate.bathroom
    fill_in "Bedroom", with: @real_estate.bedroom
    fill_in "Carport", with: @real_estate.carport
    fill_in "Floor area", with: @real_estate.floor_area
    fill_in "Image", with: @real_estate.image
    fill_in "Land area", with: @real_estate.land_area
    fill_in "Object", with: @real_estate.object
    fill_in "Offer type", with: @real_estate.offer_type
    fill_in "Town and province", with: @real_estate.town_and_province
    click_on "Update Real estate"

    assert_text "Real estate was successfully updated"
    click_on "Back"
  end

  test "destroying a Real estate" do
    visit real_estates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Real estate was successfully destroyed"
  end
end
