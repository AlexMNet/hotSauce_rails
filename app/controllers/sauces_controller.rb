class SaucesController < ApplicationController 

  def index 
    @sauces = Current.user.sauces
  end

  def new 
    @sauce = Sauce.new
  end

  def create
    @sauce = Current.user.sauces.new(sauce_params)
    if @sauce.save
      redirect_to sauces_path, notice: "Sauced added! 🌶"
    else
      render :new
    end
  end

  private 

  def sauce_params
    params.require(:sauce).permit(:title, :qty)
  end

end
