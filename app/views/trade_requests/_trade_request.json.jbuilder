json.extract! trade_request, :id, :name, :date, :created_at, :updated_at
json.url trade_request_url(trade_request, format: :json)
