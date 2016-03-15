class OrdersController < ApplicationController
	def create
	    @food_item = FoodItem.find(params[:food_item_id])
	    @order = @food_item.orders.create(order_params)
	    # redirect_to food_item_path(@food_item)

	   if @order.save
	    redirect_to thanks_path(id: @order.id)
	   end
    end

    def thanks
    	@order = Order.find(params[:id])
    	@food_item = FoodItem.find(@order.food_item_id)
    end

 
  private
    def order_params
      params.require(:order).permit(:name, :number, :address, :email, :id, :coupon_code)
    end
end
