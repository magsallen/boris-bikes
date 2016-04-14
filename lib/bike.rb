class Bike

	def report_broken
		return false
	end

	def working?
		return true unless report_broken
	end

end 
