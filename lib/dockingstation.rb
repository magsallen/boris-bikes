require_relative 'bike'

class DockingStation
attr_reader :bike
#attr_accessor :array_of_bikes

DEFAULT_CAPACITY = 20

	def initialize
	 	@array_of_bikes = []
	end

	def release_bike
		raise "Station empty" if empty?
		@array_of_bikes.pop
	end

	def dock(bike)
		raise "Station full" if full?
		@array_of_bikes << bike
	end


	private

	def full?
	  @array_of_bikes.length >= DEFAULT_CAPACITY
	end

	def empty?
	  @array_of_bikes.length <= 0
	end
end
