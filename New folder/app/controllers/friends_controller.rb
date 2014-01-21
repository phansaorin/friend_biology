class FriendsController < ApplicationController
	def index
		@friend = Friend.all
	end
	def new
		@friend = Friend.new
	end
	def create
		@add_friend = Friend.new
		@add_friend.fname = params[:friend][:fname]
		@add_friend.lname = params[:friend][:lname]
		@add_friend.age = params[:friend][:age]
		@add_friend.sex = params[:friend][:sex]
		@add_friend.photo = params[:friend][:photo]
        redirect_to new_biology_path
	end
	
end
