class RoomsController < ApplicationController


def index
	@rooms = Room.all

end

def new
	@room = Room.new
end



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

end
