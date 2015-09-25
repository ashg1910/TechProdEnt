class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :reviews, :restaurant, :restaurant_id
  end
end
