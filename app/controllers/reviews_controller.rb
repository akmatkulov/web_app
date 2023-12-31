class ReviewsController < ApplicationController

  before_action :find_iphone!
  before_action :find_review!, except: :create

  def edit
  end

  def update
    if @review.update review_params
      flash[:success] = "Review Updated"
      redirect_to iphone_path(@iphone)
    else
      render :edit
    end
  end

  def destroy
    @review.destroy 
    flash[:success] = "Review Deleted"
    redirect_to iphone_path(@iphone)
  end

  def create
    @review = @iphone.reviews.build review_params
    if @review.save
      flash[:success] = "Review Created"
      redirect_to iphone_path(@iphone)
    else
      @reviews = @iphone.reviews.order created_at: :desc
      render 'iphones/show'
    end
  end

  private 
    def review_params
      params.require(:review).permit(:author, :rating, :body)
    end

    def find_iphone!
      @iphone = Iphone.find params[:iphone_id]
    end

    def find_review!
      @review = @iphone.reviews.find params[:id]
    end

end
