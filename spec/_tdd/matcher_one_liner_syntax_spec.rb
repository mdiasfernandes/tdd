RSpec.describe (1..5), "Range with one-liner" do
  it 'cover' do
    is_expected.to cover(1,5)
    expect(subject).not_to cover(0,6)
  end

  it {is_expected.to cover(2,4)}
  
  it {is_expected.not_to cover(8,9)}
end