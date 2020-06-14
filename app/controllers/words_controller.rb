class WordsController < ApplicationController

	def counter
		wc = Requests::WordCounter.new 
		hash = wc.handle_data(params[:input_type], params[:source])

		render json: {data: hash}
	end

	def statistics
		ws = Requests::WordStatistics.new
		key = params[:key].downcase
		count = ws.get_stats(key)

		render json: {key => count.to_i}
	end

	def flushall
		DataBaseHandler.new.flushall
	end

end
