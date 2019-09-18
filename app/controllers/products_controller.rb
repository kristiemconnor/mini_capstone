class ProductsController < ApplicationController

  def index
    @products = Product.all
    render 'index.html.erb' 
  end

  def show
    @product = Product.find(params[:id])
    render 'show.html.erb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price].to_i,
      image_url: params[:image_url],
      description: params[:description],
      supplier_id: params[:supplier_id]
      )
    @product.save
    redirect_to "/products/#{@product.id}"
  end

  def edit
    @product = Product.find(params[:id])
    render 'edit.html.erb'
  end

  def update 
    @product = Product.find(params[:id])
    @product.update(
      name: params[:name],
      price: params[:price].to_i,
      image_url: params[:image_url],
      description: params[:description],
      supplier_id: params[:supplier_id]
      )
    redirect_to "/products/#{@product.id}"
  end

end
