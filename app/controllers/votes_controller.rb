class VotesController < ApplicationController
  def create

  	@vote = Vote.where(link_id: params[:vote][:link_id], user_id: current_user.id ).first

  	if @vote
  		puts "++++++++++++++++++++++%%%% Inside"
  		@vote.up = params[:vote][:up]	
  		@vote.save
  	else
   		@vote = current_user.votes.create(params[:vote])
   	end
   puts "++++++++++++++++++++++%%%%"
    puts @vote.up
   puts @vote.errors.inspect
   redirect_to :back

  end
end
