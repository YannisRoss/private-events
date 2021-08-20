class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.date :event_date
      t.string :title

      t.timestamps
    end
  end
end
