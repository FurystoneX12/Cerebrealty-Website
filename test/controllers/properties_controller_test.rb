require "test_helper"

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url
    assert_response :success
  end

  test "should get new" do
    get new_property_url
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post properties_url, params: { property: { bathroom: @property.bathroom, bedroom: @property.bedroom, carport: @property.carport, floor_area: @property.floor_area, image: @property.image, land_area: @property.land_area, object: @property.object, offer_type: @property.offer_type, town_and_province: @property.town_and_province } }
    end

    assert_redirected_to property_url(Property.last)
  end

  test "should show property" do
    get property_url(@property)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_url(@property)
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { bathroom: @property.bathroom, bedroom: @property.bedroom, carport: @property.carport, floor_area: @property.floor_area, image: @property.image, land_area: @property.land_area, object: @property.object, offer_type: @property.offer_type, town_and_province: @property.town_and_province } }
    assert_redirected_to property_url(@property)
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete property_url(@property)
    end

    assert_redirected_to properties_url
  end
end
