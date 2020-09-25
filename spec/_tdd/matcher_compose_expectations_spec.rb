describe 'Compose Expectations' do
  it 'compose and #1' do
    expect("Testando compose")
      .to be_a(String)
      .and have_attributes(size: (be > 0))
  end
  it 'compose or #1' do
    expect("Testando compose")
      .to be_a(String)
      .or have_attributes(size: (be > 0))
  end
end