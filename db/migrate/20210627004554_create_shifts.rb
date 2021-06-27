class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date, null: false
      t.time :start_at, null: false
      t.time :end_at, null: false

      t.timestamps
    end
  end
end
