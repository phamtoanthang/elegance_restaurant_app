class MenuController < ApplicationController
  def index
  	@sections = %w(Breakfast Lunch Dinner Drinks)
  	@items_sort = FoodItem.all

    @items_by_section_default = FoodItem.order("created_at DESC").filter_by_section(params[:section])   #section
    @items_by_section_sorted_by_name = FoodItem.filter_by_section(params[:section]).sort_by_name(params[:name])
    @items_by_section_sorted_by_price =  FoodItem.filter_by_section(params[:section]).sort_by_price(params[:price])



    # @items_by_name = FoodItem.all.sort_by_name(params[:name])    #sort by name 

    @items_test = FoodItem.filter_by_section(params[:section]).sort_by_price("Increasing")

    # @items_by_price = FoodItem.all.sort_by_price(params[:price])    #sort by price


    if params[:name] == "name" 
      @items_sort = @items_by_section_sorted_by_name
    elsif params[:price] != nil 
      @items_sort = @items_by_section_sorted_by_price
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
