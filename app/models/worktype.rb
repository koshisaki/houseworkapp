class Worktype < ApplicationRecord
    validates :name,
            presence: { message: "家事内容は必須です。"},
            length: { maximum: 20, message: "家事内容は20文字以下で指定してください。"}
    validates :timepay,
            presence: { message: "時給は必須です。"},
            length: { maximum: 20, message: "時給は20桁以下で指定してください。"}
    validates :room_id,
            presence: true
    belongs_to :room
end
