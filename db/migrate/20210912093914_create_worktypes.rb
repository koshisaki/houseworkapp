class CreateWorktypes < ActiveRecord::Migration[5.1]
  def change
    create_table :worktypes do |t|
      t.string :name
      t.integer :timepay
      t.integer :room_id

      t.timestamps
    end
    add_foreign_key :worktypes, :rooms
  end
end
