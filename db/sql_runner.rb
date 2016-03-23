class SqlRunner

  def self.run_sql(query)

    begin

      db = PG.connect(dbname: "app_db", host: "localhost") if development?
      db = PG.connect( { host: "ec2-54-228-246-42.eu-west-1.compute.amazonaws.com", user: "yxlddfjywgxdbr", dbname: "d48gou3to3j84a", password: "f3BmTeaM5icv9ju5ZytdeDljHu"} ) if production?
      result = db.exec(query)

    ensure
      db.close
    end

    return result

  end
  
end
