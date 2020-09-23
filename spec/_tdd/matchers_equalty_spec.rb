describe do
  x = "1"
  y = "1"
  
  it 'equal - mesmo objeto' do
    expect(x).not_to equal(y)
    expect(x).to equal(x)
  end
  
  it 'be - mesmo objeto' do
    expect(x).not_to be(y)
    expect(x).to be(x)
  end
  
  it 'eql - mesmo valor' do
    expect(x).to eql(y)
    expect(x).to eql(x)
  end
  
  it 'eq - mesmo valor' do
    expect(x).to eq(y)
    expect(x).to eq(x)
  end
end
