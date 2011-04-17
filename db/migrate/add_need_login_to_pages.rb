class AddNeedLoginToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :need_login, :boolean, :default => 0
  end

  def self.down
    remove_column :pages, :need_login
  end
end
