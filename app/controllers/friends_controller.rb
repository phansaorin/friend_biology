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
		@add_friend.fname = params[:friend][:lname]
		@add_friend.fname = params[:friend][:age]
		@add_friend.fname = params[:friend][:sex]
		@add_friend.fname = params[:friend][:photo]

        redirect_to friends_path;	
	end
	
end
