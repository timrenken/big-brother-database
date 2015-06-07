json.array!(@houseguests) do |houseguest|
  json.extract! houseguest, :id, :name, :location, :latitude, :longitude, :age, :occupation, :season_id, :placed, :votes_against, :votes_to_win, :hoh, :nominated, :veto, :botb, :have_not, :first_day, :last_day, :prizes, :jury, :expelled, :walked
  json.url houseguest_url(houseguest, format: :json)
end
