class Weapon < ApplicationRecord
  validates :level, numericality: {greater_than_or_equal_to: 1}
  validates :power_base, numericality: {greater_than_or_equal_to: 3000}
  validates :power_step, numericality: {greater_than_or_equal_to: 100}

    def current_power
      power_base + ((level-1)*power_step)
    end

    def weapon_title
      puts "Name: #{name}"
      puts "Description: #{description}"
      puts "Power: #{current_power}"
      puts "Level: #{level}"
    end
end
