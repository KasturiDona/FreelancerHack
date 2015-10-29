json.array!(@users) do |user|
  json.extract! user, :id, :name, :collaborator, :skillset, :rating, :hiring_status, :account
  json.url user_url(user, format: :json)
end
