class BiologysController < ApplicationController
	def index
		@biology = Biology.all
	end
	def show
		@biology = Biology.find_by_friend_id(params[:id])
		
	end
	def new
		@biology = Biology.new
	end
	def create
		@biology = Biology.new
		@biology.friend_id = Friend.last.id
		# modelname.last  mean that show last insert
		@biology.date_of_birth = params[:biology][:date_of_birth]
		@biology.place_of_birth = params[:biology][:place_of_birth]
		@biology.skills = params[:biology][:skills]
		@biology.favorite = params[:biology][:favorite]
		@biology.dream = params[:biology][:dream]

		@biology.save

		redirect_to friends_path 
	end
end
