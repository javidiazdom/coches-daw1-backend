class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  def new
    @review = Review.new
    @review.specifications.build
    @review.sections.build
  end
  
  def index
    @reviews = Review.all
  end

  def specifications
    @specifications = Review.find(params[:id]).specifications
    render :json => @specifications.to_json()
  end

  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to reviews_path
  end

  def show
    #@review = Review.find(params[:id])
    #render :json => @review.to_json(:include => [:sections, :specifications])
  end

  def recent
    render :json => Review.last(3).to_json()
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_path
  end

  private
    def review_params
      params.require(:review).permit(:title, sections_attributes: Section.attribute_names.map(&:to_sym).push(:_destroy), specifications_attributes: Specification.attribute_names.map(&:to_sym).push(:_destroy))
    end

    def set_review
      @review = Review.find params[:id]
  end
end