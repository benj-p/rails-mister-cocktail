class ReviewsController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    @dose = Dose.new
    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      render template: 'cocktails/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:user, :content, :rating)
  end
end
