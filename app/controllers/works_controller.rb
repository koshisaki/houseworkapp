class WorksController < ApplicationController
  def create
    @work = Work.new(work_params)
    @room = Room.find(@work.room_id)
    if @work.save
      flash[:success] = "家事記録を登録しました！"
      redirect_to room_url(@room.room_hash)
    else
      @room_member = RoomMember.new
      @worktype = Worktype.new
      render 'rooms/show'
    end
  end

  private
    def work_params
      params.require(:work).permit(
        :room_member_id,
        :worktype_id,
        :time,
        :room_id
      )
    end
end
