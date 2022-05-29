class AddStatusToSwapOffer < ActiveRecord::Migration[6.0]
  def change
    add_column :swap_offers, :status, :string
  end
end
