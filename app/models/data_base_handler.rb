require 'redis'

class DataBaseHandler

	def initialize
		@redis = Redis.new(host: Config::DB_HOST_NAME)
	end

	def write(words_hash)
		response_hash = {}

		words_hash.each do |key, value|
			redis_value = @redis.get(key)
	
			if redis_value.nil?
				@redis.set(key ,value)
			else
				@redis.set(key ,value += redis_value.to_i)
			end

			response_hash[key] = value
		end

		response_hash
	end

	def read(key)
		redis_value = @redis.get(key)
		return redis_value.nil? ? 0 : redis_value
	end

	def flushall
		@redis.flushall
	end

end