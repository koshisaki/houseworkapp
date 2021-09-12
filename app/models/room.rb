class Room < ApplicationRecord
    validates :name,
        presence: { message: "ルーム名は必須です。"},
        length: { maximum: 20, message: "ルーム名は20文字以下で指定してください。"}
end
