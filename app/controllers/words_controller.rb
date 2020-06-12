class WordsController < ApplicationController

	def counter
		wc = Requests::WordCounter.new 
		hash = wc.handle_data(params[:input_type], params[:source])

		render json: {data: hash}
	end

	def statistics
		ws = Requests::WordStatistics.new
		count = ws.get_stats(params[:key])

		render json: {params[:key] => count.to_i}
	end

	def flushall
		DataBaseHandler.new.flushall
	end

end
