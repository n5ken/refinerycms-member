class AddNeedLoginToPages < ActiveRecord::Migration
  def change
    add_column :pages, :need_login, :boolean, :default => 0
  end
end
