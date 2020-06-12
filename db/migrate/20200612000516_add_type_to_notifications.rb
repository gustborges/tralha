class AddTypeToNotifications < ActiveRecord::Migration[6.0]
  def change
    add_column :notifications, :type, :string, null: false, default: "receiver"
  end
end
