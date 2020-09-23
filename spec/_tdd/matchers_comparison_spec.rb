describe do
  x = 1
    
  it 'comparison >' do
    expect(x).to be > 0
  end

  it 'comparison <' do
    expect(x).not_to be < 0
  end

  it 'comparison ==' do
    expect(x).to be == 1
  end

  it 'comparison ==' do
    expect(x).not_to be == 0
  end

  it 'be_between inclusive' do
    expect(x).to be_between(0,2).inclusive
    expect(0).to be_between(0,2).inclusive
    expect(2).to be_between(0,2).inclusive
  end
  
  it 'be_between exclusive' do
    expect(x).to be_between(0,2).exclusive
    expect(0).not_to be_between(0,2).exclusive
    expect(2).not_to be_between(0,2).exclusive
  end

  it 'match' do
    expect("mail@mail").to match(/..@../)
  end

  it 'start with' do
    expect("email mail@mail finish").to start_with("email")
    expect("email mail@mail finish").to end_with("finish")
    expect([1, 2, 3]).to start_with(1)
    expect([1, 2, 3]).to end_with(3)
  end
end
