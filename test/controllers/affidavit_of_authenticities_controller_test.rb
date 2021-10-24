require "test_helper"

class AffidavitOfAuthenticitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @affidavit_of_authenticity = affidavit_of_authenticities(:one)
  end

  test "should get index" do
    get affidavit_of_authenticities_url
    assert_response :success
  end

  test "should get new" do
    get new_affidavit_of_authenticity_url
    assert_response :success
  end

  test "should create affidavit_of_authenticity" do
    assert_difference('AffidavitOfAuthenticity.count') do
      post affidavit_of_authenticities_url, params: { affidavit_of_authenticity: { address: @affidavit_of_authenticity.address, first_name: @affidavit_of_authenticity.first_name, last_name: @affidavit_of_authenticity.last_name } }
    end

    assert_redirected_to affidavit_of_authenticity_url(AffidavitOfAuthenticity.last)
  end

  test "should show affidavit_of_authenticity" do
    get affidavit_of_authenticity_url(@affidavit_of_authenticity)
    assert_response :success
  end

  test "should get edit" do
    get edit_affidavit_of_authenticity_url(@affidavit_of_authenticity)
    assert_response :success
  end

  test "should update affidavit_of_authenticity" do
    patch affidavit_of_authenticity_url(@affidavit_of_authenticity), params: { affidavit_of_authenticity: { address: @affidavit_of_authenticity.address, first_name: @affidavit_of_authenticity.first_name, last_name: @affidavit_of_authenticity.last_name } }
    assert_redirected_to affidavit_of_authenticity_url(@affidavit_of_authenticity)
  end

  test "should destroy affidavit_of_authenticity" do
    assert_difference('AffidavitOfAuthenticity.count', -1) do
      delete affidavit_of_authenticity_url(@affidavit_of_authenticity)
    end

    assert_redirected_to affidavit_of_authenticities_url
  end
end
