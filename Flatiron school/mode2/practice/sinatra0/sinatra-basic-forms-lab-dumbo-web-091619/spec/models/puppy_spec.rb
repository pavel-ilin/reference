describe 'Puppy class' do
  let!(:puppy) {
    #arity is the number of arguments that a method accepts
    arity = Puppy.instance_method(:initialize).arity
    if arity == 1
      # assuming you want to instantiate a puppy with a hash
      Puppy.new(name: "brad", breed: "black lab", age: 2)
    elsif arity == 3
      # assuming you want to instantiate a puppy with three separate args
      Puppy.new("brad", "black lab", 2)
    else
      # beyond that I can't help you
      nil
    end
  }

  it 'can create a new instance of the puppy class' do
    expect(puppy).to be_an_instance_of(Puppy)
  end

  it 'can read a puppy name' do
    expect(puppy.name).to eq("brad")
  end

  it 'can read a puppy breed' do
    expect(puppy.breed).to eq("black lab")
  end

  it 'can read a puppy age in months (puppy#months_old)' do
    expect(puppy.months_old).to eq(2)
  end

  it 'can change puppy age in months (puppy#months_old=)' do 
    puppy.months_old = 3
    expect(puppy.months_old).to eq(3)
  end

  it 'can change puppy name' do
    puppy.name = "brad the beast"
    expect(puppy.name).to eq("brad the beast")
  end

end
