class AddLatLonToBusinesses < ActiveRecord::Migration[5.0]
  def self.up
  	add_column :businesses, :latitude, :float
  	add_column :businesses, :longitude, :float
  end

  def self.down
    remove_column :businesses, :latitude
    remove_column :businesses, :longitude
  end
end
