class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: { to_table: :users }
      t.string :post_name
      t.string :post_address
      t.integer :deadline_wday
      t.integer :before_deadline
      t.integer :shift_cycle

      t.timestamps
    end
  end
end
