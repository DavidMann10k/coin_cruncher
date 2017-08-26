require 'test_helper'

class CoinTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "coin fixture is valid" do
    assert coins(:my_coin).valid?
  end
end
