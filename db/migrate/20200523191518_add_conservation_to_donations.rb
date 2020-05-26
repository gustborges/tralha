class AddConservationToDonations < ActiveRecord::Migration[6.0]
  def change
    add_column :donations, :conservation, :string
  end
end
