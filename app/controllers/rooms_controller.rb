class RoomsController < ApplicationController

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new()
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      flash[:success] = "ルームが作成されました。さっそく家事記録をつけましょう！"
      redirect_to room_url(@room)
    else
      render 'new'
    end
  end

  private
    def room_params
      params.require(:room).permit(:name)
    end
end
