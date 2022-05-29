class CreateSwapOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :swap_offers do |t|
      t.string :name
      t.datetime :date_start
      t.datetime :date_end

      t.timestamps
    end
  end
end
