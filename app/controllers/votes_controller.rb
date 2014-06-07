class VotesController < ApplicationController
	def create
		permitted_voter = params.require(:vote).permit(:email, :name)

		voter=Voter.find_by(email: params[:vote][:email])
		unless voter 
			voter=Voter.new(permitted_voter)
			if voter.valid?
				voter.save!
			end
		end

		drink=Drink.find(params[:drink_id])
		
		permitted_vote = params.require(:vote).permit(:vote_value)
		vote=Vote.new(permitted_vote)
		if vote.valid?
			vote.save!
			drink.votes << vote
			voter.votes << vote
		end
		redirect_to drink_path(params[:drink_id])
	end
end