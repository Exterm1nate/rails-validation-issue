require "test_helper"

class MotorcycleTest < ActiveSupport::TestCase
  test "validation declaration inherits from vehicle" do
    Vehicle # force Vehicle load first to prevent loading error
    assert Motorcycle.validators_on(:color).any?
  end

  test "validation really works" do
    Vehicle # force Vehicle load first to prevent loading error
    Motorcycle.create!(color: "red", model: "Yamaha")
    duplicate = Motorcycle.create(color: "red", model: "Yamaha")

    assert duplicate.errors[:color].any?
  end
end
