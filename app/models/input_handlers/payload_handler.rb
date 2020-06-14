class InputHandlers::PayloadHandler

	include Counter

	def handle_data(data)
		count(data)
	end

end