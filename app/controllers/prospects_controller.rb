class ProspectsController < ApplicationController    
  
  def index
    @prospects = Prospect.all
  end
  
  def show
    @prospect = Prospect.find(params[:id])
  end

  def create
    @prospect = Prospect.new(prospects_params)
    @prospect.user = current_user
    if @prospect.save
      redirect_to prospects_path
    else
      render :new
    end
  end

  private

  def prospects_params
    params.require(:prospect).permit(:name, :email, :telephone)
  end
  
end
