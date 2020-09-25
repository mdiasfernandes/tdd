describe 'matcher be_within' do
  it 'be_within' do
    aaaa = 12.5
    expect(aaaa).to be_within(0.5).of(12)
  end
end