class ReviewsController < ApplicationController
	def create
		@product = Product.find(params[:product_id])
		@review = @product.reviews.new(review_params)
		if @review.save
			redirect_to @product, notice: 'Review created.'
		else
			redirect_to product_path(@product), notice: 'Review did not saved.'
		end
	end

	private

		def review_params
			params.require(:review).permit(:name, :review)
		end
end
