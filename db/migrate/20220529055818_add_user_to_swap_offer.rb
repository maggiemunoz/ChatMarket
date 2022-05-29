class AddUserToSwapOffer < ActiveRecord::Migration[6.0]
  def change
    add_reference :swap_offers, :user, foreign_key: true
  end
end
