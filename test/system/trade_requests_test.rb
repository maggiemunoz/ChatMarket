require "application_system_test_case"

class TradeRequestsTest < ApplicationSystemTestCase
  setup do
    @trade_request = trade_requests(:one)
  end

  test "visiting the index" do
    visit trade_requests_url
    assert_selector "h1", text: "Trade Requests"
  end

  test "creating a Trade request" do
    visit trade_requests_url
    click_on "New Trade Request"

    fill_in "Date", with: @trade_request.date
    fill_in "Name", with: @trade_request.name
    click_on "Create Trade request"

    assert_text "Trade request was successfully created"
    click_on "Back"
  end

  test "updating a Trade request" do
    visit trade_requests_url
    click_on "Edit", match: :first

    fill_in "Date", with: @trade_request.date
    fill_in "Name", with: @trade_request.name
    click_on "Update Trade request"

    assert_text "Trade request was successfully updated"
    click_on "Back"
  end

  test "destroying a Trade request" do
    visit trade_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trade request was successfully destroyed"
  end
end
