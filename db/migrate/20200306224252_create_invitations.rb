class CreateInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.integer :user_id
      t.integer :sent_by
      t.integer :event_id
      t.boolean :is_accepted #, default: false

      t.timestamps
    end
  end
end
