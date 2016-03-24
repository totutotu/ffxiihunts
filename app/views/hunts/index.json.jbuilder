json.array!(@hunts) do |hunt|
  json.extract! hunt, :id, :name, :steal, :strategy, :level
  json.url hunt_url(hunt, format: :json)
end
