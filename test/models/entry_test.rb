require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  test "entry fixtures are valid" do
    assert entries(:credit).valid?
    assert entries(:debit).valid?
  end
end
