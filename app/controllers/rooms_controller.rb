class RoomsController < ApplicationController

  def show
    @room = Room.find_by(room_hash: params[:id])
    @room_member = RoomMember.new
    @worktype = Worktype.new
    @work = Work.new
    
    if @room.blank?
      @room = Room.new
      render 'new'
    end
  end

  def new
    @room = Room.new
    @room_member = RoomMember.new
  end

  def create
    @room = Room.new(room_params)
    @room.room_hash = SecureRandom.uuid

    if @room.save
      flash[:success] = 'ルームが作成されました。さっそく家事記録をつけましょう！'
      redirect_to room_url(@room.room_hash)
    else
      render 'new'
    end
  end

  private
    def room_params
      params.require(:room).permit(
        :name
      )
    end

end
