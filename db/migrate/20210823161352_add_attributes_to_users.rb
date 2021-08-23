class AddAttributesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :bio, :text
    add_column :users, :age, :integer
    add_column :users, :birth_date, :date
    add_column :users, :gender, :string
    add_column :users, :phone_number, :string
    add_column :users, :role, :string
    add_column :users, :languages, :string, array: true, default: []
    add_column :users, :hobbies, :string, array: true, default: []
    add_column :users, :chosen_activities, :text, array: true, default: []
  end
end
