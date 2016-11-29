class UsersController < ApplicationController
	def my_portfolio
		@user_stocks = current_user.stocks # 이미 many to many asso 가 있으니 이런식으로 instance var 로 설정 가능 
		@user = current_user

	end
	
	def my_friends

	end
	

end
