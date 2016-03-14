class Order < ActiveRecord::Base
  belongs_to :food_item
  DELIVERY_COST = 20

  def include_delivery_cost
  	FoodItem.find(self.food_item_id).price + DELIVERY_COST
  end
end
