class AddTradeRequestToSwapOffer < ActiveRecord::Migration[6.0]
  def change
    add_reference :swap_offers, :trade_request, null: false, foreign_key: true
  end
end
