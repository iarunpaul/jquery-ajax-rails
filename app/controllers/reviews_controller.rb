class ReviewsController < ApplicationController
	def create
		@product = Product.find(params[:product_id])
		@review = @product.reviews.new(review_params)
		if @review.save
			flash[:notice] = 'Review created.'
		else
			flash[:notice] = 'Review did not save.'
		end
		respond_to do |format|
			format.html { redirect_to @product }
			format.js
		end
	end

	private

		def review_params
			params.require(:review).permit(:name, :review)
		end
end
