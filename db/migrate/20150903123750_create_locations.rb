class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :lat
      t.integer :long
      t.string :user

      t.timestamps
    end
  end
end
