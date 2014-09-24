class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :sections
  has_many :stats
  has_many :cards, through: :stats

  def todays_pairings
  	stats.where(interval: 0).map{|stat| Pairing.find(stat.pairing_id)}
  end
end
