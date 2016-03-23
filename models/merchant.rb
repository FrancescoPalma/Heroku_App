require "pg"
require_relative "category.rb"
require_relative "../db/sql_runner"

class Merchant

  attr_reader :name, :id

  def initialize(options)
    @name = options['name']
    @id = nil || options['id']
  end

  def save
    sql = "INSERT INTO Merchants (name) VALUES ('#{ @name }')"
    SqlRunner.run_sql(sql)
    last_entry
  end

  def last_entry
    sql = "SELECT * FROM Merchants ORDER BY id DESC limit 1;"
    Merchant.map_item(sql)
  end

  def self.find(id)
   sql = "SELECT * FROM Merchants WHERE id = #{id.to_i}"
   result = SqlRunner.run_sql(sql)
   merchant = Merchant.new(result[0])
  end

  def self.update(params)
    sql = " UPDATE Merchants SET name = '#{params['name']}' WHERE id = '#{params['id']}' "
    SqlRunner.run_sql(sql)
  end

  def self.all
    sql = "SELECT * FROM Merchants"
    Merchant.map_items(sql)
  end

  def self.delete_all 
   sql = "DELETE FROM Merchants"
   SqlRunner.run_sql(sql)
  end

  def self.map_item(sql)
    result = Merchant.map_items(sql)
    result.first
  end

  def self.map_items(sql)
    merchants = SqlRunner.run_sql(sql)
    result = merchants.map { |m| Merchant.new(m) }
    result
  end

  def categories
    sql = "SELECT c.* FROM Categories c INNER JOIN Transactions t ON t.category_id = c.id WHERE t.merchant_id = #{@id}"
    Category.map_items(sql)
  end

end