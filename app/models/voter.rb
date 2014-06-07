class Voter < ActiveRecord::Base
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
	validates :email, uniqueness: true
	validates :name, presence: {on: :create}
	has_many :votes
end
