class InitialSchema < ActiveRecord::Migration[5.0]
  def change

  	create_table "businesses" do |t|
	    t.string   "name"
	    t.text     "description"
	    t.text     "address"
	    t.integer  "phone"
	    t.string   "email"
	    t.string   "website_url"
	    t.string   "img_url"	    
	    t.string   "menu_url"
	    t.string   "logo_url"
	    t.datetime "created_at",  null: false
	    t.datetime "updated_at",  null: false
	end

	create_table "categories" do |t|
		t.string "name"
	end

	create_table "posts", force: :cascade do |t|
	    t.string   "title"
	    t.text     "content"
	    t.integer  "rating"
	    t.datetime "created_at", null: false
	    t.datetime "updated_at", null: false
	    
  	end

	create_table "comments", force: :cascade do |t|
	    t.text     "content"
	    t.integer  "post_id"
	    t.datetime "created_at", null: false
	    t.datetime "updated_at", null: false
  	end

  	

  end
end
