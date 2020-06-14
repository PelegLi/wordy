module Counter

	def count(data, words_hash = Hash.new(0))
		words = data.split(Config::WORDS_SPLIT_REGEX).reject(&:empty?)
		words.each { |w| words_hash[w.downcase] += 1 }
		words_hash
	end

	def persist(words_hash)
		DataBaseHandler.new.write(words_hash)
	end

end