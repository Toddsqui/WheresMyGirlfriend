class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.string :status
      t.string :message
      t.integer :sender_id
      t.integer :recipient_id

      t.timestamps
    end
  end
end
