require "minitest/autorun"
require "minitest/rg"
require_relative "../models/account"

class TestAccount < MiniTest::Test

  def setup
    @account = Account.new
  end

  def test_transactions_total
    result = @account.transactions_total
    assert_equal(result, @account.transactions_total)
  end

  def test_incomes_total
    expectation = @account.incomes_total
    assert_equal(expectation, @account.incomes_total)
  end

  def test_balance
    expectation = @account.incomes_total - @account.transactions_total
    assert_equal(expectation, @account.balance)
  end
  
end