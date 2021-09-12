class Room < ApplicationRecord
    validates :name,
            presence: { message: "ルーム名は必須です。"},
            length: { maximum: 20, message: "ルーム名は20文字以下で指定してください。"}
    validates :hash,
            presence: true
    has_many :room_members, dependent: :destroy
    has_many :worktypes, dependent: :destroy
    has_many :works, dependent: :destroy

    def culculate
        array = []
        self.room_members.each do |rm|
            array.push(rm.sum_work)
        end
        average = array.sum.fdiv(array.length)

        return average
    end
end
