require "minitest/autorun"
require "minitest/rg"
require_relative "../models/category"

class TestCategory < MiniTest::Test

  def setup
    options = {
      'name' => 'food'
    }
    @category = Category.new(options)
  end

  def test_name
    assert_equal('food', @category.name)
  end
  
end