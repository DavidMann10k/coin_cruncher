require 'test_helper'

class TradeTest < ActiveSupport::TestCase
  test "trade fixtures are valid" do
    assert trades(:one).valid?
  end
end
