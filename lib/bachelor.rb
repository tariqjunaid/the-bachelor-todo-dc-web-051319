def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  person = nil
  data.each do |hash_season, contestants_array|
    contestants_array.find do |contestant|
      if contestant["occupation"] == occupation
        person = contestant["name"]
      end
    end
  end
  person
end

def count_contestants_by_hometown(data, hometown)
  person = nil
  data.each do |hash_season, contestants_array|
    contestants_array.each do |contestant|
      if contestant["hometown"] == hometown
        person << hash_season
      end
    end
  end
  person.length
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
