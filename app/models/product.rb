class Product < ApplicationRecord


  validates :name, presence: true 
  
  validates :price, numericality: true, presence: true
  
  validates :description, length: { minimum: 1 }, presence: true

  validates :image_url, presence: true


  belongs_to :supplier
  # has_many :images
  has_many :orders
  has_many :carted_products
  has_many :categories, through: :product_categories
  has_many :product_categories


  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09

  end

  def total
    price + tax
  end
end
