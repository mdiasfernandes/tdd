describe 'capitalize' do
  it 'use capitalize' do
    x = "texto"
    z = "TEXTO"
    expect(x.capitalize).to eq("Texto")
    expect(z.capitalize).to eq("Texto")
  end
end