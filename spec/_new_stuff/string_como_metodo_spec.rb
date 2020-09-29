describe 'send and public_send' do
  it 'use send and public_send' do
    x = "texto"
    y = "size"
    expect(x.send(y)).to eq(5)
    expect(x.public_send(y)).to eq(5)
  end
end