class AddUserToTradeRequest < ActiveRecord::Migration[6.0]
  def change
    add_reference :trade_requests, :user, foreign_key: true
  end
end
