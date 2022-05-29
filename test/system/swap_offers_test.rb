require "application_system_test_case"

class SwapOffersTest < ApplicationSystemTestCase
  setup do
    @swap_offer = swap_offers(:one)
  end

  test "visiting the index" do
    visit swap_offers_url
    assert_selector "h1", text: "Swap Offers"
  end

  test "creating a Swap offer" do
    visit swap_offers_url
    click_on "New Swap Offer"

    fill_in "Date end", with: @swap_offer.date_end
    fill_in "Date start", with: @swap_offer.date_start
    fill_in "Name", with: @swap_offer.name
    click_on "Create Swap offer"

    assert_text "Swap offer was successfully created"
    click_on "Back"
  end

  test "updating a Swap offer" do
    visit swap_offers_url
    click_on "Edit", match: :first

    fill_in "Date end", with: @swap_offer.date_end
    fill_in "Date start", with: @swap_offer.date_start
    fill_in "Name", with: @swap_offer.name
    click_on "Update Swap offer"

    assert_text "Swap offer was successfully updated"
    click_on "Back"
  end

  test "destroying a Swap offer" do
    visit swap_offers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Swap offer was successfully destroyed"
  end
end
