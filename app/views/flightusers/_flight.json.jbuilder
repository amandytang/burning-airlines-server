json.extract! flight, :id, :origin, :date, :destination, :plane_id, :created_at, :updated_at
json.url flight_url(flight, format: :json)
