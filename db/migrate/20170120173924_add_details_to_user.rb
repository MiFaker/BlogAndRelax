class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :gender_type, :integer
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :phone, :string
    add_column :users, :fax, :string
    add_column :users, :memo, :text
    add_reference :users, :role, foreign_key: true
  end
end
