class SaucesController < ApplicationController 
  before_action :set_sauce, only: [:edit, :update, :destroy]

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

  def edit
    # @sauce found by before_action
  end

  def update
    # @sauce found by before_action
    if @sauce.update(sauce_params)
      redirect_to sauces_path, notice: "Sauce was updated!"
    else
      render :new
    end
  end

  def destroy 
    # @sauce found by before_action
    @sauce.destroy
    redirect_to sauces_path, notice: "Sauce was deleted!"
  end

  private 

  def sauce_params
    params.require(:sauce).permit(:title, :qty)
  end

  def set_sauce
    @sauce = Current.user.sauces.find(params[:id])
  end

end
