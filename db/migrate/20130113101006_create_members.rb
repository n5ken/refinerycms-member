class CreateMembers < ActiveRecord::Migration
  def change
    create_table(:members) do |t|
      t.string :username

      t.string :email,              :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""

      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      t.datetime :remember_created_at

      t.integer  :sign_in_count, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      t.timestamps
    end

    add_index :members, :email,                :unique => true
    add_index :members, :reset_password_token, :unique => true
  end
end
