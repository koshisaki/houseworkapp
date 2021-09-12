class AddColumnRoomAndCreateRoomMember < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :room_hash, :string, unique: true
    add_index :rooms, :room_hash
    create_table :room_members do |t|
      t.integer :room_id
      t.string :name
      t.timestamps
    end
    add_foreign_key :room_members, :rooms
  end
end
