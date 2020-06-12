class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :notifications, :type, :recipient
  end
end
