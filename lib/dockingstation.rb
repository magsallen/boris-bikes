require_relative 'bike'

class DockingStation
attr_reader :bike, :capacity

DEFAULT_CAPACITY = 20

	def initialize(capacity=DEFAULT_CAPACITY)
	 	@array_of_bikes = []
		@capacity = capacity
	end

	def release_bike
		raise "Station empty" if empty?
		@array_of_bikes.pop
	end

	def dock(bike)
		raise "Station full" if full?
		@array_of_bikes << bike
	end

	def report_broken
	end	

	private

	def full?
	  @array_of_bikes.length >= DEFAULT_CAPACITY
	end

	def empty?
	  @array_of_bikes.length <= 0
	end
end
