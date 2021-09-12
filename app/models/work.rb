class Work < ApplicationRecord
    validates :room_member_id,
            presence: true
    validates :worktype,
            presence: true
    validates :time,
            presence: { message: "かかった時間は必須です。"},
            length: { maximum: 20, message: "かかった時間は20桁以下で指定してください。"}
    belongs_to :room_member
    belongs_to :worktype

    def equivalant
        return sprintf("%.0f",(self.worktype.timepay/60.to_f)*self.time)
    end
end
