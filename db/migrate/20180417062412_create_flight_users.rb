class CreateFlightUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :flight_users do |t|
      t.integer :flight_id
      t.integer :user_id
      t.string :seat

      t.timestamps
    end
  end
end
