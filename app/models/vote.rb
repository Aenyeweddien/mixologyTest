class Vote < ActiveRecord::Base
	validates :vote_value, inclusion: { in: 0..5 }, presence: true
	belongs_to :drink
	belongs_to :voter

	def email
	end

	def name
	end
end
