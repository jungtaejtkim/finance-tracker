class StocksController < ApplicationController

	def search
		if params[:stock]
			@stock=Stock.find_by_ticker(params[:stock])
			@stock ||= Stock.new_from_lookup(params[:stock])   # 위의 stock 을 우리 params 에서 못찾았을때 == db 에 없을때 (nil) 클래스 메쏘드로 검색해서 채워넣기
		end

		if @stock
			#render json: @stock #function working 하는지 보면 좋은 샘플 코드
			render partial: 'lookup'
		else
			render status: :not_found, nothing: true
		end

	end


end
