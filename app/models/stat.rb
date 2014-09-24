class Stat < ActiveRecord::Base
	belongs_to :student
	belongs_to :card
	belongs_to :pairing
end
