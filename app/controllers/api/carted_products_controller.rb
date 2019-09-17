class Api::CartedProductsController < ApplicationController






  def create
    @carted_product = CartedProduct.create(product_id: params[:product_id], 
    quantity: params[:quantity])
    @carted_product.save
    render json: { message: "Product added to cart!"}
  end
end
