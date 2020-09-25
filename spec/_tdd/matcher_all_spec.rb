describe 'Test All' do
  it 'All with And' do
    expect(['Testando compose', 'Testando compose'])
      .to all be_kind_of(String)
      .and have_attributes(size: (be > 0))
  end

  it 'All with Or' do
    expect(['Testando compose', 'Testando compose'])
      .to all be_kind_of(String)
      .or have_attributes(size: (be > 0))
  end
end