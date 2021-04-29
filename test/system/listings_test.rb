require "application_system_test_case"

class ListingsTest < ApplicationSystemTestCase
  setup do
    @listing = listings(:one)
  end

  test "visiting the index" do
    visit listings_url
    assert_selector "h1", text: "Listings"
  end

  test "creating a Listing" do
    visit listings_url
    click_on "New Listing"

    fill_in "Bathroom", with: @listing.bathroom
    fill_in "Bedroom", with: @listing.bedroom
    fill_in "Carport", with: @listing.carport
    fill_in "Floor area", with: @listing.floor_area
    fill_in "Image", with: @listing.image
    fill_in "Land area", with: @listing.land_area
    fill_in "Object", with: @listing.object
    fill_in "Offer type", with: @listing.offer_type
    fill_in "Town and province", with: @listing.town_and_province
    click_on "Create Listing"

    assert_text "Listing was successfully created"
    click_on "Back"
  end

  test "updating a Listing" do
    visit listings_url
    click_on "Edit", match: :first

    fill_in "Bathroom", with: @listing.bathroom
    fill_in "Bedroom", with: @listing.bedroom
    fill_in "Carport", with: @listing.carport
    fill_in "Floor area", with: @listing.floor_area
    fill_in "Image", with: @listing.image
    fill_in "Land area", with: @listing.land_area
    fill_in "Object", with: @listing.object
    fill_in "Offer type", with: @listing.offer_type
    fill_in "Town and province", with: @listing.town_and_province
    click_on "Update Listing"

    assert_text "Listing was successfully updated"
    click_on "Back"
  end

  test "destroying a Listing" do
    visit listings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Listing was successfully destroyed"
  end
end
