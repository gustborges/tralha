class CreateTransfers < ActiveRecord::Migration[6.0]
  def change
    create_table :transfers do |t|
      t.references :receiver, null: false, foreign_key: { to_table: :users }
      t.references :donation, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
