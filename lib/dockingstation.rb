require_relative 'bike'

class DockingStation
attr_reader :bike
#attr_accessor :array_of_bikes

	# def initialize
	# 	@array_of_bikes = []
	# end

	def release_bike
		raise "Station empty" unless @bike
	#	Bike.new
#		end
	end

	def dock(bike)
		bike = @bike
	end

end
