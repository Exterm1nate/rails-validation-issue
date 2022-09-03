require "test_helper"

class VehicleTest < ActiveSupport::TestCase
  test "validation exists" do
    assert Vehicle.validators_on(:color).any?
  end
end
