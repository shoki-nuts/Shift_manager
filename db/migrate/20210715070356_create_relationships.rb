class CreateRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :relationships do |t|
      t.references :member, null: false, foreign_key: { to_table: :users }
      t.references :post, null: false, foreign_key: true

      t.timestamps
      t.index [:member_id, :post_id], unique: true

    end
  end
end
