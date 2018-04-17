class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.string :origin
      t.string :date
      t.string :destination
      t.integer :plane_id

      t.timestamps
    end
  end
end
