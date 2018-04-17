class CreatePlanes < ActiveRecord::Migration[5.1]
  def change
    create_table :planes do |t|
      t.integer :column
      t.integer :row
      
      t.timestamps
    end
  end
end
