json.array!(@discussions) do |discussion|
  json.extract! discussion, :topic, :user_id
  json.url discussion_url(discussion, format: :json)
end
