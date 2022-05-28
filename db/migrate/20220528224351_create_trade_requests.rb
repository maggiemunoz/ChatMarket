class CreateTradeRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :trade_requests do |t|
      t.string :name
      t.datetime :date_start
      t.datetime :date_end

      t.timestamps
    end
  end
end
