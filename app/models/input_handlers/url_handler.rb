class InputHandlers::UrlHandler

	require 'open-uri'
	include Counter

	def handle_data(source)
		data = get_and_count_file_content(source)
	end

	def get_and_count_file_content(source)
		words_hash = Hash.new(0)

		open(source, 'r').each do |line|
			words_hash = count(line, words_hash)
		end

		words_hash
    end

end