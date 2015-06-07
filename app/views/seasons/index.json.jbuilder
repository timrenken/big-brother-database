json.array!(@seasons) do |season|
  json.extract! season, :id, :year, :description
  json.url season_url(season, format: :json)
end
