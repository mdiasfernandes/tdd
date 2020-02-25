class Weapon < ApplicationRecord
  validates :level, numericality: {greater_than_or_equal_to: 1}
  validates :power_base, numericality: {greater_than_or_equal_to: 3000}
  validates :power_step, numericality: {greater_than_or_equal_to: 100}

    def current_power
      power_base + ((level-1)*power_step)
    end

    def weapon_title
      "Name: #{name}, Description: #{description}, Power Base: #{power_base}, Level: #{level}"
    end
end
