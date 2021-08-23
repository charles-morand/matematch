class CreateContactRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_requests do |t|
      t.references :guide, null: false, foreign_key: { to_table: "users" }
      t.references :explorer, null: false, foreign_key: { to_table: "users" }
      t.string :activity
      t.string :status

      t.timestamps
    end
  end
end
