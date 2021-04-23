require "application_system_test_case"

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test "visiting the index" do
    visit properties_url
    assert_selector "h1", text: "Properties"
  end

  test "creating a Property" do
    visit properties_url
    click_on "New Property"

    fill_in "Area", with: @property.area
    fill_in "Bathroom", with: @property.bathroom
    fill_in "Bedroom", with: @property.bedroom
    fill_in "Carport", with: @property.carport
    fill_in "Floor area", with: @property.floor_area
    fill_in "Land area", with: @property.land_area
    fill_in "Object", with: @property.object
    fill_in "Offer type", with: @property.offer_type
    fill_in "Town and province", with: @property.town_and_province
    click_on "Create Property"

    assert_text "Property was successfully created"
    click_on "Back"
  end

  test "updating a Property" do
    visit properties_url
    click_on "Edit", match: :first

    fill_in "Area", with: @property.area
    fill_in "Bathroom", with: @property.bathroom
    fill_in "Bedroom", with: @property.bedroom
    fill_in "Carport", with: @property.carport
    fill_in "Floor area", with: @property.floor_area
    fill_in "Land area", with: @property.land_area
    fill_in "Object", with: @property.object
    fill_in "Offer type", with: @property.offer_type
    fill_in "Town and province", with: @property.town_and_province
    click_on "Update Property"

    assert_text "Property was successfully updated"
    click_on "Back"
  end

  test "destroying a Property" do
    visit properties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Property was successfully destroyed"
  end
end
