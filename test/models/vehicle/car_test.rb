require "test_helper"

class Vehicle::CarTest < ActiveSupport::TestCase
  test "validation inherits from vehicle" do
    assert_not Vehicle::Car.validators_on(:color).size == 0
  end
end
