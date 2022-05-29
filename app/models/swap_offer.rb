class SwapOffer < ApplicationRecord
    belongs_to :trade_request
    belongs_to :user

    STATUSES = [:pendiente, :aceptada, :rechazada]
end
