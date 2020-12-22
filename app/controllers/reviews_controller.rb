class ReviewsController < ApplicationController
  def new
  end
  
  def index
    render :json => Review.all.to_json(:include => :sections)
  end

  def specifications
    @specifications = Review.find(params[:id]).specifications
    render :json => @specifications.to_json()
  end

  def create
    @review = Review.new(
      params.require(:review).permit(:title))
    @review.save
    redirect_to @review
  end

  def show
    @review = Review.find(params[:id])
    render :json => @review.to_json(:include => :sections)
  end
end
 