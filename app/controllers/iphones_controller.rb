class IphonesController < ApplicationController

  before_action :find_iphone!, only: [:show, :edit, :update, :destroy]

  def index
    @pagy, @iphones = pagy Iphone.all
  end

  def new
    @iphone = Iphone.new
  end

  def create
    @iphone = Iphone.new iphone_params
    if @iphone.save
      flash[:success] = "Iphone Created"
      redirect_to iphones_path
    else
      render :new
    end
  end

  def show
    @review = @iphone.reviews.build
    @pagy, @reviews = pagy @iphone.reviews.order(created_at: :desc)
  end
    
  def edit
  end

  def update
    if @iphone.update iphone_params
      flash[:success] = "Iphone Updated"
      redirect_to iphones_path
    else
      render :edit
    end
  end

  def destroy
    @iphone.destroy
    flash[:success] = "Iphone Deleted"
    redirect_to iphones_path
  end 

  private
  
    def iphone_params
      params.require(:iphone).permit(:title, :body, :img, :price)
    end

    def find_iphone!
      @iphone = Iphone.find(params[:id])
    end

end