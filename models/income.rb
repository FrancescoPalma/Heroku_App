require "pg"
require_relative "../db/sql_runner"

class Income

  attr_reader :amount, :type, :income_date, :id

  def initialize(options)
    @amount = options['amount'].to_f
    @type = options['type']
    @income_date = options['income_date']
    @id = nil || options['id']
  end

  def save
    sql = "INSERT INTO Income (amount, type, income_date) VALUES (#{ @amount }, '#{ @type }', '#{ @income_date }')"
    SqlRunner.run_sql(sql)
  end

  def last_entry
    sql = "SELECT * FROM Income ORDER BY id DESC limit 1;"
    Income.map_item(sql)
  end

  def self.find(id)
   sql = "SELECT * FROM Income WHERE id = #{id.to_i}"
   result = SqlRunner.run_sql(sql)
   income = Income.new(result[0])
  end

  def self.update(params)
    sql = " UPDATE Income SET 
    amount = #{params['amount']},
    type = '#{params['type']}',
    income_date = '#{params['income_date']}'
    WHERE id = '#{params['id']}' "
    SqlRunner.run_sql(sql)
  end

  def self.all
    sql = "SELECT * FROM Income"
    Income.map_items(sql)
  end

  def self.delete_all 
   sql = "DELETE FROM Income"
   SqlRunner.run_sql(sql)
  end

  def self.map_item(sql)
    result = Income.map_items(sql)
    result.first
  end

  def self.map_items(sql)
    income = SqlRunner.run_sql(sql)
    result = income.map { |i| Income.new(i) }
    result
  end

  def self.delete(id)
    sql = "DELETE FROM Income WHERE id = #{id.to_i}"
    SqlRunner.run_sql(sql)
  end

end