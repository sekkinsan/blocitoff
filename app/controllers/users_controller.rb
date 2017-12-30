class UsersController < ApplicationController

before_action :authenticate_user!

  def show
    if current_user.present?
      @user = current_user
      @item = Item.new
      @items = @user.items
    else
      redirect_to new_user_registration_path
    end  
  end


end
