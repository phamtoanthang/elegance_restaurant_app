class MenuController < ApplicationController
  def index
  	@sections = %w(Breakfast Lunch Dinner Drinks)
    @cuisines = %w(Vietnamese Chinese Western)

    @items_by_section_default = FoodItem.order("created_at DESC").filter_by_section(params[:section])   #section
    @items_by_section_sorted_by_name = FoodItem.filter_by_section(params[:section]).sort_by_name(params[:name])
    @items_by_section_sorted_by_price =  FoodItem.filter_by_section(params[:section]).sort_by_price(params[:price])
    @items_by_cuisine = FoodItem.filter_by_cuisine(params[:cuisine])
    @items_sorted_by_view = FoodItem.sort_by_view(params[:view])

    if params[:name] == "name" 
      @items_sort = @items_by_section_sorted_by_name
    elsif params[:price].present? 
      @items_sort = @items_by_section_sorted_by_price
    elsif params[:cuisine].present? 
      @items_sort = @items_by_cuisine
    elsif params[:view].present? 
      @items_sort = @items_sorted_by_view
    else
      @items_sort = @items_by_section_default
    end 

  end
  
  def search
  	if params[:search].present?
      @items_by_search = FoodItem.search(params[:search])
    end
  end

end
