require "minitest/autorun"
require "minitest/rg"
require_relative "../models/income"

class TestIncome < MiniTest::Test

  def setup
    options = {
      'amount' => 1000,
      'type' => 'Real Estate Investment',
      'income_date' => '2016-03-15'
    }
    @income = Income.new(options)
  end

  def test_amount
    assert_equal(1000, @income.amount)
  end

  def test_type
    assert_equal('Real Estate Investment', @income.type)
  end

  def test_income_date
    assert_equal('2016-03-15', @income.income_date)
  end
  
end