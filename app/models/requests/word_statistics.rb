class Requests::WordStatistics

	def get_stats(key)
		DataBaseHandler.new.read(key)
	end

end