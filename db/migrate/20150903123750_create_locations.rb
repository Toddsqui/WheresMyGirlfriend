class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :lat
      t.integer :long
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
