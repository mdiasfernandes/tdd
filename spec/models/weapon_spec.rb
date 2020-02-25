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

  # it 'returns the correct hero tittle' do
  #   nickname = Faker::Name.first_name
  #   kind = %i[knight wizard].sample
  #   level = Faker::Number.within(range: 1..99)
  #   user = build(:user, nickname: nickname, kind: kind, level: level) #> build(factory, factory_data)
  #   expect(user.title).to eq("#{kind} #{nickname} ##{level}")
  # end
end
