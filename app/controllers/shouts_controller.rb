class ShoutsController < ApplicationController
  def new
    @shout = Shout.new
  end
  
  def create
    @shout = Shout.new(params[:shout])
    if @shout.save
      flash[:notice] = "Shout has been created."
#       redirect_to shouts_url
      redirect_to :action => :index
    else
      render :new   
    end
  end
  
  def edit
    @shout = Shout.find(params[:id])
  end
  
  def update
    @shout = Shout.update(params[:id], params[:shout])
      flash[:notice] = "Shout has been updated!"
#       redirect_to shouts_url
      redirect_to :action => :index
  end
  
  def destroy
    @shout = Shout.destroy(params[:id])
      flash[:notice] = "Shout has been deleted!"
  #       redirect_to shouts_url
      redirect_to :action => :index
  end
  
  def index
    @shouts = Shout.all
  end
end