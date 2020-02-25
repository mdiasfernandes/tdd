require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is invalid level if the level is not between 1 and 99' do
    nickname = Faker::Name.first_name
    kind = %i[knight wizard].sample
    level = Faker::Number.within(range: 100..9999)
    user = User.new(nickname: nickname, kind: kind, level: level)
    expect(user).to_not be_valid
  end
  it 'returns the correct hero tittle' do
    nickname = Faker::Name.first_name
    kind = %i[knight wizard].sample
    level = Faker::Number.within(range: 1..99)
    user = User.new(nickname: nickname, kind: kind, level: level)
    expect(user.title).to eq("#{kind} #{nickname} ##{level}")
  end
end
