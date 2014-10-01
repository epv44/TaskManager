json.array!(@log_hours) do |log_hour|
  json.extract! log_hour, :id, :hours, :user_id
  json.url log_hour_url(log_hour, format: :json)
end
