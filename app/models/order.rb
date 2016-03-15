class Order < ActiveRecord::Base
  belongs_to :food_item
  DELIVERY_COST = 20
  COUPON_CODE = 'CODERSCHOOL'

  def total_cost
  	@factor = self.is_eligible_for_discount ? 0.5 : 1
  	FoodItem.find(self.food_item_id).price*@factor + DELIVERY_COST
  end

  def is_eligible_for_discount
  	self.coupon_code.upcase == COUPON_CODE
  end

end


