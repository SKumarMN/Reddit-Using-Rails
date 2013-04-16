class PagesController < ApplicationController

	def index
		@links = Link.paginate(:page => params[:page], :per_page => 2).order('id DESC')
	end
end
