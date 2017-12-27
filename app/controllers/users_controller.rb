class UsersController < ApplicationController


  def show
    if current_user.present?
      @user = current_user
      @item = Item.new
      @items = @user.items
    else
      redirect_to welcome_index
    end  
  end


end
