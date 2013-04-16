class CommentsController < ApplicationController
  def create
  	@comment = current_user.comments.create(params[:comment])

  	respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.link, notice: 'comment was successfully created.' }
       
      else
        
        format.html { redirect_to :back }
      end
 	end
	

  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to :back
  end
end
