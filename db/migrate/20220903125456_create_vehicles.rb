class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :color
      t.string :model
      t.string :type

      t.timestamps
    end
  end
end
