class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :license_plate, :null => false
      t.string :vehicle_type, :null => false

      t.timestamps null: false
    end
    add_index :vehicles, :license_plate, unique: true
  end
end
