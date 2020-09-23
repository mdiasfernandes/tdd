describe do
  x = "1"
  y = true
  z = nil
  
  it 'be_true and be_false' do
    expect(y).not_to be false
    expect(y).to be true
  end
  
  it 'be_truthy' do
    expect(x).not_to be_falsey
    expect(x).to be_truthy
  end
  
  it 'be_nil' do
    expect(z).to be_nil
  end
end
