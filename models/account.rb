require_relative "category"
require_relative "merchant"
require_relative "income"
require_relative "transaction"

class Account

  attr_reader :transactions, :merchants, :categories, :incomes

  def initialize
    @transactions = Transaction.all
    @merchants = Merchant.all
    @categories = Category.all
    @incomes = Income.all
  end

  def transactions_total
    @transactions.map { |transaction| transaction.amount }.reduce { |sum, amount| sum + amount }
  end

  def incomes_total
    @incomes.map { |i| i.amount }.reduce { |sum, amount| sum + amount }
  end

  def balance
    incomes_total - transactions_total
  end

end