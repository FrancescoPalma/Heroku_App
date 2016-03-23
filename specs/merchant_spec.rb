require "minitest/autorun"
require "minitest/rg"
require_relative "../models/merchant.rb"

class TestMerchant < MiniTest::Test

  def setup
    options = {
      'name' => 'Tesco'
    }
    @merchant = Merchant.new(options)
  end

  def test_name
    assert_equal('Tesco', @merchant.name)
  end
  
end