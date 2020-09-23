describe do
      
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer) #Checa exatamente a classe
  end

  it 'be_kind_of' do
    expect(10).to be_instance_of(Integer) #Checa a herança inteira
  end

  it 'respond_to' do
    expect("string").to respond_to(:size) #Responde ao método
    expect("string").to respond_to(:count) #Responde ao método
    expect("string").to respond_to(:to_i) #Responde ao método
  end

  it 'be_a' do
    expect(10).to be_a(Integer) #Checa exatamente a classe
  end

  it 'be_an' do
    expect(10).to be_an(Integer) #Checa exatamente a classe
  end
end
