json.array!(@profiles) do |profile|
  json.extract! profile, :id, :add_column, :, :, :
  json.url profile_url(profile, format: :json)
end
