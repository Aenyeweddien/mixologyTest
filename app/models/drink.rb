class Drink < ActiveRecord::Base
	validates :name, uniqueness: {message: 'Must be unique'}
	has_many :votes
end
