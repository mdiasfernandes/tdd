require 'rails_helper'

RSpec.describe Weapon, type: :model do
  describe 'To not be valid' do
    it 'Invalid unless Level is at least 1' do
      weapon = build(:weapon, level: Faker::Number.between(from:0, to:0)) #> build(factory_instance, factory_data)
      expect(weapon).to_not be_valid
    end
  
    it 'Invalid unless Power Base is at least 3000' do
      weapon = build(:weapon, power_base: Faker::Number.between(from:0, to:3000)) #> build(factory_instance, factory_data)
      expect(weapon).to_not be_valid
    end
  
    it 'Invalid unless Power Step is at least 100' do
      weapon = build(:weapon, power_step: Faker::Number.between(from:0, to:100)) #> build(factory_instance, factory_data)
      expect(weapon).to_not be_valid
    end
  end

  describe 'At least values' do
    it 'Level is at least 1' do
      weapon = build(:weapon) #> build(factory_instance, factory_data)
      expect(weapon.level).to be >= 1
    end
  
    it 'Power Base is at least 3000' do
      weapon = build(:weapon) #> build(factory_instance, factory_data)
      expect(weapon.power_base).to be >= 3000
    end
  
    it 'Power Step is at least 100' do
      weapon = build(:weapon) #> build(factory_instance, factory_data)
      expect(weapon.power_step).to be >= 100
    end
  end

  describe 'Evaluate Current Power' do
    it 'Current Power' do
      power_base = Faker::Number.within(range:3000..999999)
      power_step = Faker::Number.within(range:100..999999)
      level = Faker::Number.within(range:1..999999)
      weapon = build(:weapon, power_step: power_step, power_base: power_base, level: level)
      expect(weapon.current_power).to eq(power_base + ((level-1)*power_step))
    end
  end

  describe 'Weapon details' do
    it 'Weapon tittle' do
      name = Faker::Name.first_name
      description = %i[knight wizard].sample
      power_base = Faker::Number.within(range:3000..999999)
      level = Faker::Number.within(range:1..999999)
      weapon = build(:weapon, name: name, description: description, power_base: power_base, level: level)
      expect(weapon.weapon_title).to eq("Name: #{name}, Description: #{description}, Power Base: #{power_base}, Level: #{level}")
    end
  end
end
