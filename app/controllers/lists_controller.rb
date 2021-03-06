class ListsController < ApplicationController
  def index
  	@lists = List.all
  end

  def new
  	@list = List.new
  end

  def create
    @list = List.new(params[:list])
    if @list.save
    	redirect_to(@list)
    else
    	redirect_to new_list_path
    end
  end

  def show
  	@list = List.find(params[:id])
    @item = @list.items.new
  end

  def edit
  	@list = List.find(params[:id])
  end

  def update
  	@list = List.find(params[:id])
  	if @list.update_attributes(params[:list])
  	  redirect_to(@list)
  	else
  	  redirect_to edit_list_path
  	end
  end

  def destroy
  	@list = List.find(params[:id])
  	@list.destroy
  	redirect_to lists_path
  end

end
