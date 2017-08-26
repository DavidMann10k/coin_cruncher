require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user fixtures are valid" do
    assert users(:one).valid?
  end
end
