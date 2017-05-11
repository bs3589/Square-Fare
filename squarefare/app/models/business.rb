class Business < ActiveRecord::Base

	has_many :posts
	belongs_to :category, optional: true
	validates_presence_of :name


end