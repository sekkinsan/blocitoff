class ItemsController < ApplicationController

    def new
        @item = Item.new
    end

    def create
        @item = Item.new
        @item.user = current_user
        @item.name = params[:item][:name]

        if @item.save
            flash[:notice] = "Item saved"
            redirect_to current_user
        else
            flash.now[:alert] = "Item was not created, please try again."
            render :new
        end
    end

    def edit

    end

    def destroy
        @item = Item.find(params[:id])

        if @item.destroy
            flash[:notice] = "Item completed"
            redirect_to root_path
        else
            flash[:error] = "There was an error deleting the item, please try again."
            render :show
        end
    end

end
