RSpec::Matchers.define :be_a_multiple_of do |expected|
  match do |actual|
    actual % expected == 0
  end
end

describe "multiples of" do
  it "18 is multiple of 6" do
    expect(18).to be_a_multiple_of(6)
  end
end