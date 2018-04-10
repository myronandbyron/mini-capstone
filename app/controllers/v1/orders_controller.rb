class V1::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    orders = current_user.orders
    render json: orders.as_json
  end

  def create
   carted_products = current_user.carted_products.where(status: "carted")

   calculated_subtotal = 
   carted_products.each do |carted_product|
      carted_product[0]end
# # FIX ^ ^ # #

   calculated_tax = calculated_subtotal * .09

   calculated_total = calculated_subtotal + calculated_tax

   order = Order.new(
    user_id: current_user.id,
    subtotal: calculated_subtotal,
    tax: calculated_tax,
    total: calculated_total
    )

   carted_products.save
   carted_products.update_all(status: "purchased", order_id: order.id)
   render json: order
  end

  
end
