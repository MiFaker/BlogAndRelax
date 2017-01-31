class CreateActionLogs < ActiveRecord::Migration
  def change
    create_table :action_logs do |t|
      t.integer :target_id
      t.string :target_type
      t.string :action_name
      t.integer :creator_id
      t.string :creator_type
      t.string :ip_address
      t.string :user_agent

      t.timestamps null: false
    end
  end
end
