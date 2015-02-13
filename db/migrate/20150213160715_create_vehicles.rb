class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :license_plate
      t.string :vehicle_type

      t.timestamps null: false
    end
    add_index :vehicles, :license_plate, unique: true
  end
end
