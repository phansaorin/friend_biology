class BiologiesController < ApplicationController
	def index
		@biology = Biologys.all
	end
	def show
		@biology = Biologys.find_by_friend_id(params[:id])
		
	end
end
