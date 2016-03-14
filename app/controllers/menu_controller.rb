class MenuController < ApplicationController
  def index
  	@sections = %w(Breakfast Lunch Dinner Drinks)
  	@name = "name"   #to use for sort
    @items_by_section = FoodItem.filter_by_section(params[:section])   #section
    @items_by_name = FoodItem.all.sort_by_name(params[:name])    #sort by name 
  end
  
  def search
  	if params[:search].present?
      @items_by_search = FoodItem.search(params[:search]).order("name ASC")
    end
  end


end
