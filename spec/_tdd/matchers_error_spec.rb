describe do
  it 'raise exception 1' do       
    a = 0
    expect{a/a}.to raise_exception
    expect{a/a}.to raise_error(ZeroDivisionError)
  end
end