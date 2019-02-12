json.extract! coffee_profile, :id, :title, :description, :created_at, :updated_at
json.url coffee_profile_url(coffee_profile, format: :json)
