class RoomsController < ApplicationController

def index
	@rooms = Room.all
end

def create
	@rooms = Room.new(room_params)
	if @rooms.save
		flash[:success] = "Hey it worked!"
		redirect_to root_path
	else
	 flash[:error] = "Hey it didn't work"
	 render 'new'
	end
end

private 

def room_params
	params.require(:room).permit(:name)
	end
end
