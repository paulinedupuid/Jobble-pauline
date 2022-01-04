class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :city, :string
    add_column :users, :recrutor, :boolean, default: false
    add_column :users, :description, :string
    add_column :users, :gender, :string
    add_column :users, :birthdate, :datetime
  end
end
