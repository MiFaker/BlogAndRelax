class AddDetailsToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :gender_type, :integer
    add_column :admins, :last_name, :string
    add_column :admins, :first_name, :string
    add_column :admins, :phone, :string
    add_column :admins, :fax, :string
    add_column :admins, :memo, :text
    add_reference :admins, :role, foreign_key: true
  end
end
