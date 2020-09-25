RSpec.describe (1..5), "Range" do
  it 'cover' do
    expect(subject).to cover(1,5)
    expect(subject).not_to cover(0,6)
  end
end