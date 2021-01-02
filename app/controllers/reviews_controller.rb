class ReviewsController < ApplicationController
  def new
  end
  
  def index
    @reviews = Review.all
  end

  def specifications
    @specifications = Review.find(params[:id]).specifications
    render :json => @specifications.to_json()
  end

  def create
    @review = Review.new(
      params.require(:review).permit(:title))
    @review.save
    redirect_to reviews_path
  end

  def show
    @review = Review.find(params[:id])
    render :json => @review.to_json(:include => :sections)
  end

  def recent
    render :json => Review.last(3).to_json()
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_path
  end
end
 