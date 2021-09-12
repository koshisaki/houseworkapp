class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.integer :room_member_id
      t.integer :worktype_id
      t.integer :time
      t.integer :room_id

      t.timestamps
    end
    add_foreign_key :works, :room_members
    add_foreign_key :works, :worktypes
    add_foreign_key :works, :rooms
  end
end
