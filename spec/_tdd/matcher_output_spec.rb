describe 'matcher output' do
  it 'STDOUT - Standard Out' do
    expect{ puts "Texto puts" }.to output.to_stdout
    expect{ print "Texto puts" }.to output("Texto puts").to_stdout
    expect{ puts "Texto puts" }.to output(/Texto puts/).to_stdout
  end
  
  it 'STERR - Standard Error' do
    expect{ warn "Texto puts" }.to output.to_stderr
    expect{ warn "Texto puts" }.to output("Texto puts\n").to_stderr
    expect{ warn "Texto puts" }.to output(/Texto puts/).to_stderr
  end
end