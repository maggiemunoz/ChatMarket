require 'test_helper'

class SwapOffersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @swap_offer = swap_offers(:one)
  end

  test "should get index" do
    get swap_offers_url
    assert_response :success
  end

  test "should get new" do
    get new_swap_offer_url
    assert_response :success
  end

  test "should create swap_offer" do
    assert_difference('SwapOffer.count') do
      post swap_offers_url, params: { swap_offer: { date_end: @swap_offer.date_end, date_start: @swap_offer.date_start, name: @swap_offer.name } }
    end

    assert_redirected_to swap_offer_url(SwapOffer.last)
  end

  test "should show swap_offer" do
    get swap_offer_url(@swap_offer)
    assert_response :success
  end

  test "should get edit" do
    get edit_swap_offer_url(@swap_offer)
    assert_response :success
  end

  test "should update swap_offer" do
    patch swap_offer_url(@swap_offer), params: { swap_offer: { date_end: @swap_offer.date_end, date_start: @swap_offer.date_start, name: @swap_offer.name } }
    assert_redirected_to swap_offer_url(@swap_offer)
  end

  test "should destroy swap_offer" do
    assert_difference('SwapOffer.count', -1) do
      delete swap_offer_url(@swap_offer)
    end

    assert_redirected_to swap_offers_url
  end
end
