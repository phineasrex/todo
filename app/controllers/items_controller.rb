class ItemsController < ApplicationController

  def create
  	@list = List.find(params[:list_id])
    @item = @list.items.create(params[:item])
    redirect_to list_path(@list)
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
