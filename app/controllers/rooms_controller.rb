class RoomsController < ApplicationController

<<<<<<< HEAD
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
=======
  def create
    @room = Room.new(room_params)
    if @room.save
      flash[:success] = "Create Room #{@room.name} sucessfully."
      redirect_back fallback_location: root_path
    else
      flash[:error] = "Error: #{@room.errors.full_messages.to_sentence}"
      redirect_back fallback_location: root_path
    end
  end

  def show
    @room = Room.find_by(id: params[:id])
  end

  private
  def room_params
    params.require(:room).permit(:name)
  end
>>>>>>> ed53c905c805f25e1b5a8c2bcd657fee09f3ac00
end
