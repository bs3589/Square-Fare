class Business < ActiveRecord::Base

	has_many :posts
	belongs_to :category, optional: true
	validates_presence_of :name

	geocoded_by :full_address
	after_validation :geocode

	def full_address
		[address]
	end

	def self.search(params)
		businesses = Business.where(category_id: params[:category].to_i)
		businesses = businesses.where("name like ? or description like ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
		businesses = businesses.near(params[:location], 2) if params[:location].present?
		businesses
	end

end