class Vehicle < ApplicationRecord
  TYPES = [
    Car,
    # Motorcycle,
  ].freeze
  validates :color, uniqueness: { scope: :model }
end
