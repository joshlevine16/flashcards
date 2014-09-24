class Pairing < ActiveRecord::Base
  belongs_to :card
  has_and_belongs_to_many :stats
end
