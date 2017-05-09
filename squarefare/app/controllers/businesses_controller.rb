class BusinessesController < ApplicationController

	def index

	end

	def new
		@business = Business.new
		
	end

	def create
		@business = Business.new(business_params)
		@business.save		
		redirect_to @business
	end

	def show
		
	end


	private
		def business_params
			params.require(:business).permit(:name, :description, :address, :phone, :email, 
											 :website_url, :img_url, :menu_url, :logo_url)

		end


end


