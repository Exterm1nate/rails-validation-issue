require "test_helper"

class CarTest < ActiveSupport::TestCase
  test "validation declaration inherits from vehicle" do
    Vehicle # force Vehicle load first to prevent loading error
    assert Car.validators_on(:color).any?
  end

  test "validation really works" do
    Vehicle # force Vehicle load first to prevent loading error
    Car.create!(color: "black", model: "Boomer")
    duplicate = Car.create(color: "black", model: "Boomer")

    assert duplicate.errors[:color].any?
  end
end
