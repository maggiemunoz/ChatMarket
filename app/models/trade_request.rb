class TradeRequest < ApplicationRecord
    has_many :swap_offers, dependent: :destroy
    belongs_to :user
end
