class V1::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show, :destroy]
  
  def index
    # p * 50
    # p current_user
    # p * 50

    # sort_by_price = params[:sort_price]

    # if sort_by_price == 'true'
    #   products = Product.order(:price).where("name LIKE ?", "%#{search_term}%")
    # else
    #   products = Product.order(:id).where("name LIKE ?", "%#{search_term}%")
    # end

    products = Product.all
    render json: products.as_json
    
    # render json: products.as_json
  end

  def create

    product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      in_stock: params[:in_stock]
    )
    if product.save
      render json: product.as_json
    else
      # do some other thing
      render json: {errors: product.errors.full_messages}, status: :unprocessible_entity
    end

    # product = Product.new(
    #   name: params[:name],
    #   price: params[:price],
    #   image_url: params[:image_url],
    #   description: params[:description]
    # )
    # product.save

    # render json: product.as_json
  end

  def show
    product = Product.find_by(id: params[:id])

    render json: product.as_json
  end

  def update

    product = Product.find(params[:id])

    product.name = params[:name] || product.name
    product.description = params[:description] || product.description
    product.in_stock = params[:in_stock] || product.in_stock
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    if product.save
      render json: product.as_json
    else
      render json: {errors: product.errors.full_messages}
    end

    # product = Product.find_by(id: params[:id])
    
    # product.name = params[:name] || product.name
    # product.price = params[:price] || product.price
    # product.image_url = params[:image_url] || product.image_url
    # product.description = params[:description] || product.description

    # render json: product.as_json
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy

    render json: {message: "DESTROYYYY'd"}
  end

end
