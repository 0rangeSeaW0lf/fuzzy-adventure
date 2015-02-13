class CreateParkingSpaces < ActiveRecord::Migration
  def change
    create_table :parking_spaces do |t|
      t.integer :level, default: 1
      t.integer :slot, default: 1

      t.timestamps null: false
    end
  end
end
