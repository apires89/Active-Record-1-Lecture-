class AddRatingToRestaurants < ActiveRecord::Migration[5.1]
  def change
    # add_column :table_name, :column_name, :type_of_data
    add_column :restaurants, :rating, :integer, default: 0, null: false
  end
end
