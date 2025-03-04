# add the Artist class here

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/artists.sqlite3"
)

sql = <<-SQL
 CREATE TABLE IF NOT EXISTS artists(
  id INTEGER PRIMARY KEY,
  name TEXT,
  genre TEXT,
  age INTEGER,
  hometown TEXT
 )
SQL

ActiveRecord::Base.connection.execute(sql)


class Artist < ActiveRecord::Base

end
