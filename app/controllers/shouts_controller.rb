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
  
  def index
    @shouts = Shout.all
  end
end