class WorktypesController < ApplicationController
  def create
    @worktype = Worktype.new(worktype_params)
    @room = Room.find(@worktype.room_id)
    if @worktype.save
      flash[:success] = "家事追加が完了しました！"
      redirect_to room_url(@room.room_hash)
    else
      @room_member = RoomMember.new
      render 'rooms/show'
    end
  end

  private
    def worktype_params
      params.require(:worktype).permit(
        :room_id,
        :name,
        :timepay
      )
    end
end
