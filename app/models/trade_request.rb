class TradeRequest < ApplicationRecord
    has_many :swap_offers, dependent: :destroy
end
