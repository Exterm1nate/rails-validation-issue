require "test_helper"

class Vehicle::MotorcycleTest < ActiveSupport::TestCase
  test "validation inherits from vehicle" do
    assert_not Vehicle::Motorcycle.validators_on(:color).size == 0
  end
end
