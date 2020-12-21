class ReviewsController < ApplicationController
  def new
    @review = Review.new(review_params)
  end
  
  def index
    render :json => Review.all.to_json(:include => :sections)
  end

  def specifications
    @specifications = Review.find(params[:id]).specifications
    render :json => @specifications.to_json()
  end

  def show
    @review = Review.find(params[:id])
    render :json => @review.to_json(:include => :sections)
  end
end
 