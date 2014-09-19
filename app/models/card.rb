class Card < ActiveRecord::Base
	has_many :stats
	has_many :students, through: :stats
end
