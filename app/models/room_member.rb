class RoomMember < ApplicationRecord
    validates :name,
        presence: { message: "メンバー名は必須です。"},
        length: { maximum: 20, message: "メンバー名は20文字以下で指定してください。"}
    belongs_to :room
    has_many :works, dependent: :destroy

    def sum_work
        sum = 0
        self.works.each do |w|
            sum += w.equivalant.to_i
        end
        return sum
    end
end
