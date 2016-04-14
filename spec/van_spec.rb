require 'van'
require 'bike'
require 'dockingstation'

describe Van do

  it 'can hold up to five bikes' do
    expect(Van::DEFAULT_CAPACITY.times{subject.load_bikes(Bike.new)}).to eq(5)
  end

  it 'will raise an error if more bikes are added' do
    expect{6.times{subject.load_bikes(Bike.new)}}.to raise_error("The van is full")
  end

end
