class IphonesController < ApplicationController
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
    @iphone = Iphone.find(params[:id])
  end
  
  def edit
    @iphone = Iphone.find(params[:id])
  end

  def update
    @iphone = Iphone.find(params[:id])
    if @iphone.update iphone_params
      redirect_to iphones_path
    else
      render :edit
    end
  end

  def destroy
    @iphone = Iphone.find(params[:id])
    @iphone.destroy
    redirect_to iphones_path
  end 

private
  
  def iphone_params
    params.require(:iphone).permit(:title, :body, :img)
  end

end