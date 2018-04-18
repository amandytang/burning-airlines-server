json.extract! flight_user, :id, :flight_id, :user_id, :seat, :created_at, :updated_at
json.url flight_user_url(flight_user, format: :json)
