require 'test_helper'

class PageTest < ActiveSupport::TestCase
  test "page fixtures are valid" do
    assert pages(:one).valid?
  end
end
