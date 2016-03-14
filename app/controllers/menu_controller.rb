class MenuController < ApplicationController
  def index
  	@sections = %w(Breakfast Lunch Dinner Drinks)
  	@name = "name"
    @items_by_section = FoodItem.filter_by_section(params[:section])  
    @items_by_name = FoodItem.all.sort_by_name(params[:name])    #sort by name 
  end

end
