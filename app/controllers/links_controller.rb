class LinksController < ApplicationController
  def show
  	@link = Link.find(params[:id])
    @comment = Comment.new
  end

  def new
  	@link = Link.new
  end

  def create

  	@link = current_user.links.new(params[:link])
    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'link was successfully created.' }
       
      else
        format.html { render action: "new" }
       
      end
    end
  	
  end
end
