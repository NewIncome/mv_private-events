class AddIndexToInvitations < ActiveRecord::Migration[6.0]
  def change
    add_index :invitations, :user_id
    add_index :invitations, :sent_by
    add_index :invitations, :event_id
  end
end
