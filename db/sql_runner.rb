require 'pg'
require 'dotenv' if ENV["DATABASE_URL"].nil?
Dotenv.load if ENV["DATABASE_URL"].nil?
class SqlRunner

  def self.run_sql(query)

    begin
      db = PG.connect(ENV["DATABASE_URL"])
      result = db.exec(query)
    ensure
      db.close
    end

    return result

  end
  
end
