require 'test_helper'

class LibationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @libation = libations(:one)
  end

  test "should get index" do
    get libations_url
    assert_response :success
  end

  test "should get new" do
    get new_libation_url
    assert_response :success
  end

  test "should create libation" do
    assert_difference('Libation.count') do
      post libations_url, params: { libation: { buy_again: @libation.buy_again, can_art: @libation.can_art, can_design: @libation.can_design, carbonated: @libation.carbonated, city_purchased: @libation.city_purchased, colour: @libation.colour, comments: @libation.comments, company_name: @libation.company_name, container_type: @libation.container_type, country_made: @libation.country_made, country_purchased: @libation.country_purchased, date_drank: @libation.date_drank, image: @libation.image, flavour: @libation.flavour, juice: @libation.juice, libation_name: @libation.libation_name, libation_type: @libation.libation_type, prov_purchased: @libation.prov_purchased, pulp: @libation.pulp, sip_guzz: @libation.sip_guzz, store_purchased: @libation.store_purchased, sweet: @libation.sweet, user_id: @libation.user_id, website: @libation.website, weight: @libation.weight, weight_type: @libation.weight_type } }
    end

    assert_redirected_to libation_url(Libation.last)
  end

  test "should show libation" do
    get libation_url(@libation)
    assert_response :success
  end

  test "should get edit" do
    get edit_libation_url(@libation)
    assert_response :success
  end

  test "should update libation" do
    patch libation_url(@libation), params: { libation: { buy_again: @libation.buy_again, can_art: @libation.can_art, can_design: @libation.can_design, carbonated: @libation.carbonated, city_purchased: @libation.city_purchased, colour: @libation.colour, comments: @libation.comments, company_name: @libation.company_name, container_type: @libation.container_type, country_made: @libation.country_made, country_purchased: @libation.country_purchased, date_drank: @libation.date_drank, image: @libation.image, flavour: @libation.flavour, juice: @libation.juice, libation_name: @libation.libation_name, libation_type: @libation.libation_type, prov_purchased: @libation.prov_purchased, pulp: @libation.pulp, sip_guzz: @libation.sip_guzz, store_purchased: @libation.store_purchased, sweet: @libation.sweet, user_id: @libation.user_id, website: @libation.website, weight: @libation.weight, weight_type: @libation.weight_type } }
    assert_redirected_to libation_url(@libation)
  end

  test "should destroy libation" do
    assert_difference('Libation.count', -1) do
      delete libation_url(@libation)
    end

    assert_redirected_to libations_url
  end
end
