json.extract! user, :id, :name, :is_seller, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
