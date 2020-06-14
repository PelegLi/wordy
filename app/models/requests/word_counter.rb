class Requests::WordCounter

	def input_types
		[:payload, :url, :file]
	end

	def get_input_handler(input_type)
		"InputHandlers::#{input_type.capitalize.camelize}Handler".constantize.new
	end

	def handle_data(input_type, source)
		return {error: "illegal input type '#{input_type}'"} unless type_valid?(input_type)
		input_handler = get_input_handler(input_type)
		data = input_handler.handle_data(source)
		input_handler.persist(data)
	end

	def type_valid?(input_type)
		return input_types.include?(input_type.to_sym) ? true : false
	end

end