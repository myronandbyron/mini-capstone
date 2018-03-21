class V1::ProductsController < ApplicationController
  
  def index
    # products = Product.all
    render json: {message: "hi"}
  end

  # def create
  
  #   if product.save
  #     render json: product.as_json
  #   else
  #     render json: {errors: product.errors.full_message}, status: :unprocessible_entity
  #   end
  # end

  # def show

  #   if product.save
  #     render json: product.as_json
  #   else
  #     render json: {errors: product.errors.full_message}, status: :unprocessible_entity
  #   end
  # end

  # def update

  #   if product.save
  #     render json: product.as_json
  #   else
  #     render json: {errors: product.errors.full_message}, status: :unprocessible_entity
  #   end
  # end

  # def destroy

  # end

end
