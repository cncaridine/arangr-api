class Arangr
  # connect to postgres
    DB = PG.connect({:host => "localhost", :port => 5432, :dbname => 'arangr-api_development'})
  # index
  def self.all
    results = DB.exec("SELECT * FROM events;")
    return results.map do |result|
      {
        "id" => result["id"].to_i,
        "title" => result["title"],
        "image" => result["image"],
        "date" => result["date"],
        "time" => result["time"].to_i,
        "location" => result["location"],
        "description" => result["description"],
        "rsvp" => result["rsvp"]
      }
    end
  end
# show route
  def self.find(id)
     results = DB.exec("SELECT * FROM events WHERE id=#{id};")
    return {
      "id" => results.first["id"].to_i,
      "title" => results.first["title"],
      "image" => results.first["image"],
      "date" => results.first["date"],
      "time" => results.first["time"].to_i,
      "location" => results.first["location"],
      "description" => results.first["description"],
      "rsvp" => results.first["rsvp"]
    }
  end
  # create route

  # delete route

  # update route

  # closing for class
end
