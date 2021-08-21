class ChangeEventInvitesToEventAttendances < ActiveRecord::Migration[6.1]
  def change

    drop_table :event_invites

    create_table :event_attendances do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
