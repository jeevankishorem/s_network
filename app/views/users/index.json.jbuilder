json.array!(@users) do |user|
  json.extract! user, :first_name, :last_name, :date_of_birth, :gender, :address, :type, :hobbies
  json.url user_url(user, format: :json)
end
