class AddTradedToTradeRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :trade_requests, :traded, :string
  end
end
