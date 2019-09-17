class Api::ProductsController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all
    # @products = Product.where ("name iLIKE ?" "%#{params[:search]}%")
    render 'index.json.jb'
  end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jb'
  end

  def create 
    @product = Product.new(id: params[:id], 
      name: params[:name],
      price: params[:price].to_i, 
      image_url: params[:image_url], 
      description: params[:description], 
      supplier_id: params[:supplier_id]
    ) 
    
    @product.save 
    render 'show.json.jb'
  end

  def update
    @product = Product.find_by(id: params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.supplier_id = params[:supplier_id] || @product.supplier_id

    @product.save
    render 'show.json.jb'
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy 
    render json: { message: "Product successfully destroyed."}
  end


end
