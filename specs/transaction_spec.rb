require "minitest/autorun"
require "minitest/rg"
require_relative "../models/transaction"

class TestTransaction < MiniTest::Test

  def setup
    options = {
      'amount' => 100,
      'transaction_date' => '2016-03-21'
    }
    @transaction = Transaction.new(options)
  end

  def test_amount
    assert_equal(100, @transaction.amount)
  end

  def test_transaction_date
    assert_equal('2016-03-21', @transaction.transaction_date)
  end
  
end