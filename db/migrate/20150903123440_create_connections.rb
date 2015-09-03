class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.string :status
      t.string :recipient
      t.string :sender
      t.string :message

      t.timestamps
    end
  end
end
