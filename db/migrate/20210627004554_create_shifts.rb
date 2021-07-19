class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :admin, null: false, foreign_key: { to_table: :users }
      t.date :start_time, null: false
      t.time :punch_in, null: false
      t.time :punch_out, null: false

      t.timestamps
    end
  end
end
