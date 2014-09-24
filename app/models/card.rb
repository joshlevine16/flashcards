class Card < ActiveRecord::Base
	has_many :stats
	has_many :students, through: :stats

	def create_pairings(current_student)
		#english - foreign
		pairing = Pairing.new(card_id: id)
		pairing.prompt = english_field
		pairing.answer = foreign_field
		pairing.save
		stat = Stat.create(pairing_id: pairing.id, student_id: current_student.id, card_id: id)
		# foreign - english
		pairing = Pairing.new(card_id: id)
		pairing.prompt = foreign_field
		pairing.answer = english_field
		pairing.save
		Stat.create(pairing_id: pairing.id, student_id: current_student.id, card_id: id)
		# pronunciation - english
		if !pronunciation.empty?
		  pairing = Pairing.new(card_id: id)
		  pairing.prompt = pronunciation
		  pairing.answer = english_field
		  pairing.save
		  Stat.create(pairing_id: pairing.id, student_id: current_student.id, card_id: id)
		end
		# image - foreign
		if !image.empty?
		  pairing = Pairing.new(card_id: id)
		  pairing.prompt = image
		  pairing.answer = english_field
		  pairing.save
		  Stat.create(pairing_id: pairing.id, student_id: current_student.id, card_id: id)
		end
	end
end
