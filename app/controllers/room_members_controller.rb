class RoomMembersController < ApplicationController
  def new
    @room_member = RoomMember.new
  end

  def create
    @room_member = RoomMember.new(room_member_params)
    @room = Room.find(@room_member.room_id)
    respond_to do |format|
      if @room_member.save
        flash[:success] = "メンバー追加が完了しました！"
        format.html {redirect_to room_url(@room.room_hash)}
      else
        @worktype = Worktype.new
        @work = Work.new
        format.html {render :show}
        format.js {render :member}
      end
    end
  end

  private
    def room_member_params
      params.require(:room_member).permit(
        :room_id,
        :name
      )
    end
end
