class AddUserBusinessIndexToPosts < ActiveRecord::Migration[5.0]
  def change
  	add_reference :posts, :business, index: true
  	add_reference :posts, :user, index: true
  end
end
