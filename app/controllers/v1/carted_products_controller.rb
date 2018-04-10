class V1::CartedProductsController < ApplicationController

  def create
    cp = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted"
      )

    if cp.save
      render json: cp.as_json
    else
      render json: {errors: cp.errors.full_messages}
    end
  end

  def index
    CartedProduct.where(user_id: current_user.id, status: "carted")
    # WORKS SAME AS ABOVE carted_products = current_user.carted_products.where(status: "carted")

    # carted_products = CartedProduct.all
    render json: carted_products.as_json
  end

end
