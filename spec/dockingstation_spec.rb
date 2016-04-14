require 'dockingstation'
require 'bike'

#SUBJECT IS AN INSTANCE OF WHAT YOU DESCRIBE
describe DockingStation do
	bike = Bike.new

	it "releases a bike method" do
		expect(subject).to respond_to(:release_bike)
	end

	it "raises an error if empty" do
		expect{subject.release_bike}.to raise_error("Station empty")
	end

	it "raises an error if full" do
		subject.dock(Bike.new)
		expect{DockingStation::DEFAULT_CAPACITY.times{subject.dock(Bike.new)}}.to raise_error("Station full")
	end

	it { is_expected.to respond_to(:bike)}

	it { should respond_to(:dock).with(1).argument }

	it 'expect the bike to be working' do
		expect(bike.working?).to be true
	end

	it 'should be able to dock an instance of a bike' do
		expect(subject.dock(bike)).to eq([bike])
	end

	it 'should initialize with a default capacity of 20' do
		expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
	end

	it 'should initialize with the capacity you pass in' do
		station = DockingStation.new(10)
		expect(station.capacity).to eq 10
	end

	it 'should be report a bike as broken' do
		expect(bike.report_broken).to eq false
	end

	it 'should not release broken bikes' do
		bike.report_broken
	  subject.dock(bike)
		expect{subject.release_bike}.to raise_error("Can't release a broken bike")
	end
end