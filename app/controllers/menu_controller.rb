class MenuController < ApplicationController
  def index
  	@sections = %w(Breakfast Lunch Dinner Drinks)
    @food_items = FoodItem.filter_by_section(params[:section])
  end

end
