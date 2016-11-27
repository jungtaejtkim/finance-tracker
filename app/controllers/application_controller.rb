class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!  #devise gem 깔고 migrate 한후 추가함 #모든 컨트롤러 요소에 있어 authenticate 를 before action 하라능
end
