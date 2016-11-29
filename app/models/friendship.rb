class Friendship < ApplicationRecord
	belongs_to :user
	belongs_to :friend, :class_name => 'User'   #friend 는 클래스가 없음 그저 user 의 다른 이름

end
