class Worktype < ApplicationRecord
    validates :name,
            presence: { message: "家事名称は必須です。"},
            length: { maximum: 20, message: "家事名称は20文字以下で指定してください。"}
    validates :timepay,
            presence: { message: "単価は必須です。"},
            length: { maximum: 20, message: "単価は20桁以下で指定してください。"}
    validates :room_id,
            presence: true
    belongs_to :room
end
