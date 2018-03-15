class ProductsController < ApplicationController
  
  def show_the_product
      render json: {message: "hello"}
  end

  def seg_show_any
    render json: {message: "hey"}
  end


  def create
  
    if product.save
      render json: product.as_json
    else
      render json: {errors: product.errors.full_message}, status: :unprocessible_entity
    end
  end

  def show

    if product.save
      render json: product.as_json
    else
      render json: {errors: product.errors.full_message}, status: :unprocessible_entity
    end
  end

  def update

    if product.save
      render json: product.as_json
    else
      render json: {errors: product.errors.full_message}, status: :unprocessible_entity
    end
  end

  def destroy

  end

end
