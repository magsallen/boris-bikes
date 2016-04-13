require_relative 'bike'

class DockingStation
attr_reader :bike
attr_accessor :array_of_bikes

	def initialize
	 	@array_of_bikes = []
	end

	def release_bike
		raise "Station empty" if @array_of_bikes.empty?
		@array_of_bikes.pop
	end

	def dock(bike)
		raise "Station full" if @array_of_bikes.length >= 20
		@array_of_bikes << bike
	end

end
