require "pg"
require_relative "merchant.rb"
require_relative "../db/sql_runner"

class Category

  attr_reader :name, :id

  def initialize(options)
    @name = options['name']
    @id = nil || options['id']
  end

  def save
    sql = "INSERT INTO Categories (name) VALUES ('#{ @name }')"
    SqlRunner.run_sql(sql)
    last_entry
  end

  def last_entry
    sql = "SELECT * FROM Categories ORDER BY id DESC limit 1;"
    Category.map_item(sql)
  end

  def self.find(id)
   sql = "SELECT * FROM Categories WHERE id = #{id.to_i}"
   result = SqlRunner.run_sql(sql)
   category = Category.new(result[0])
  end

  def self.update(params)
    sql = " UPDATE Categories SET name = '#{params['name']}' WHERE id = '#{params['id']}' "
    SqlRunner.run_sql(sql)
  end

  def self.all
    sql = "SELECT * FROM Categories"
    Category.map_items(sql)
  end

  def self.delete_all 
   sql = "DELETE FROM Categories"
   SqlRunner.run_sql(sql)
  end

  def self.map_item(sql)
    result = Category.map_items(sql)
    result.first
  end

  def self.map_items(sql)
    categories = SqlRunner.run_sql(sql)
    result = categories.map { |c| Category.new(c) }
    result
  end

  def merchants
    sql = "SELECT m.* FROM Merchants m INNER JOIN Transactions t ON t.merchant_id = m.id WHERE t.category_id = #{@id}"
    Category.map_items(sql)
  end

end