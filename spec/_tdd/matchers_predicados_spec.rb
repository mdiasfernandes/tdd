describe do
  it 'a equals true?' do
    @a = true
    @b = nil
    @c = 0
    expect(@a).to be true
    expect(@b).to be nil
    expect(@c).to be_zero
  end
end