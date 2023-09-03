class IphonesController < ApplicationController

  before_action :find_iphone!, only: [:show, :edit, :update, :destroy]

  def index
    @iphones = Iphone.all
  end

  def new
    @iphone = Iphone.new
  end

  def create
    @iphone = Iphone.new iphone_params
    if @iphone.save
      redirect_to iphones_path
    else
      render :new
    end
  end

  def show
  end
    
  def edit
  end

  def update
    if @iphone.update iphone_params
      redirect_to iphones_path
    else
      render :edit
    end
  end

  def destroy
    @iphone.destroy
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