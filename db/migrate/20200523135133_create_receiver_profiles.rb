class CreateReceiverProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :receiver_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
