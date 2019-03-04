class Arangr
  # connect to postgres
    DB = PG.connect({:host => "localhost", :port => 5432, :dbname => 'arangr-api_development'})
  def self.all
    results = DB.exec("SELECT * FROM events;")
    results.each do |result|
            puts result
        end
    [
      { title: 'SXSW', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCBnCKq0A47VX0n617wfSe7-i2wOJ3K5X0y3RO1svJ1y_mTRj4Yg', day: 'march', time: 7, location: 'Austin TX', description: 'music festival of the year', rsvp: true },
      { title: 'SXSW', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCBnCKq0A47VX0n617wfSe7-i2wOJ3K5X0y3RO1svJ1y_mTRj4Yg', day: 'march', time: 7, location: 'Austin TX', description: 'music festival of the year', rsvp: true }
    ]
  end
end
