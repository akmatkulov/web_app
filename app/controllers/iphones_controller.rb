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

private
  
  def iphone_params
    params.require(:iphone).permit(:title, :body, :img)
  end

end