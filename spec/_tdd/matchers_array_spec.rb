RSpec.describe Array.new([1, 2, 3]), "Array" do
  it 'include values' do
    expect(subject).to include(1)
  end

  it 'match values' do
    expect(subject).to match_array([1, 2, 3])
  end

  it 'contain_exactly values' do
    expect(subject).to contain_exactly(1, 2, 3)
  end
end