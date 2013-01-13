class AddNeedLoginToPages < ActiveRecord::Migration
  def change
    add_column :refinery_pages, :need_login, :boolean, :default => 0
  end
end
