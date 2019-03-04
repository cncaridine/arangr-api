class Arangr
  # connect to heroku postgres
  if(ENV['https://arangr-api.herokuapp.com/'])
    uri = URI.parse(ENV['https://arangr-api.herokuapp.com/'])
    DB = PG.connect(uri.hostname, uri.port, nil, nil, uri.path[1..-1], uri.user, uri.password)
  else
    DB = PG.connect({:host => "localhost", :port => 5432, :dbname => 'arangr-api_development'})
  end
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
  def self.create(opts)
    results = DB.exec(
      <<-SQL
        INSERT INTO events(title, image, date, time, location description, rsvp)
        VALUES ( '#{opts["title"]}', '#{opts["image"]}', '#{opts["date"]}', '#{opts["time"]}', '#{opts["description"]}',
        '#{opts["location"]}', '#{opts["rsvp"]}')
        RETURNING id, title, image, date, time, location, description, rsvp;
      SQL
    )
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
  # delete route
  def self.delete(id)
    results = DB.exec("DELETE FROM events WHERE id=#{id};")
    return { "deleted" => true }
  end
  # update route
  def self.update(id, opts)
    results = DB.exec(
      <<-SQL
        UPDATE events
        SET title='#{opts["title"]}', image='#{opts["image"]}', date='#{opts["date"]}', time='#{opts["time"]}', location='#{opts["location"]}', description='#{opts["description"]}', rsvp='#{opts["rsvp"]}'
        WHERE id=#{id}
        RETURNING id, title, image, date, time, location, description, rsvp;
      SQL
    )
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
  # closing for class
end
