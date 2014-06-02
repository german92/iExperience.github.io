json.array!(@users) do |user|
  json.extract! user, :id, :handle, :profile_pic, :bio, :status
  json.url user_url(user, format: :json)
end
