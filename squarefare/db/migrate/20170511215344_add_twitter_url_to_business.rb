class AddTwitterUrlToBusiness < ActiveRecord::Migration[5.0]
  def change
  	add_column :businesses, :twitter_url, :string
  end
end
