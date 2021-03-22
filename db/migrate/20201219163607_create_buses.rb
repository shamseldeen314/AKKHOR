class CreateBuses < ActiveRecord::Migration[6.0]
  def change
    create_table :buses do |t|
      t.string :model
      t.string :driver
      t.string :bus_number
      t.string :color

      t.timestamps
    end
  end
end
