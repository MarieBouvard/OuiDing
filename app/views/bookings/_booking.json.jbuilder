json.extract! booking, :id, :location_name, :start, :end, :location_cost, :created_at, :updated_at
json.url booking_url(booking, format: :json)
