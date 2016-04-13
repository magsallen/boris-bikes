require 'dockingstation'

describe DockingStation do
	DockingStation.new

	it "releases a bike method" do
	expect(subject).to respond_to(:release_bike)
	end

	it "raises an error if empty" do
	#if subject.array_of_bikes.empty?
	expect{subject.release_bike}.to raise_error("Station empty")
	end

	it "creates a new bike" do
		bike = Bike.new
		puts "yes, new bike has been created :)"
	end

	it { is_expected.to respond_to(:bike)}
	it { should respond_to(:dock).with(1).argument }

	it 'expect the bike to be working' do
		# station = DockingStation.new
		bike = Bike.new
		expect(bike.working?).to be true
	end

	it 'should be able to dock a bike' do
		bike = Bike.new
		expect(subject.dock(bike)).to eq(bike)
	end
end
