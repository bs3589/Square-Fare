class BusinessesController < ApplicationController

	before_action :authenticate_user!, only: [:create, :new]
	def index

	end

	def new
		@business = Business.new
		
	end

	def create
		@business = Business.new(business_params)
		if @business.save
		redirect_to @business
		else
			flash[:danger] = @business.errors.full_messages.to_sentence
			render 'new'
		end
	end

	def show
		@business = Business.find(params[:id])
		@posts = Post.where(business_id: @business)
	end


	private
		def business_params
			params.require(:business).permit(:name, :description, :address, :category_id, :phone, :email, 
											 :website_url, :img_url, :menu_url, :logo_url)




		end


end


