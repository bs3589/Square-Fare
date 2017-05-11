class Business < ActiveRecord::Base

	has_many :posts
	belongs_to :category, optional: true
	validates_presence_of :name

	geocoded_by :full_address
	after_validation :geocode

	def full_address
		[address]
	end


end