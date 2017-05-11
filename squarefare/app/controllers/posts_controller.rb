class PostsController < ApplicationController
	# before_action :set_business
	before_action :authenticate_user!

	def new
		@business = Business.find(params[:business_id])
		@post = Post.new(business: @business)
	end

	def create
		@business = Business.find(params[:business_id])
		@post = current_user.posts.build(post_params)
		@post.business = @business
		@post.save
		redirect_to @business
	end

	private

		# def set_business
		# 	@business = Business.find(params[:business_id])
		# end

		def post_params
			params.require(:post).permit(:title, :content, :rating)
			
		end
	
end