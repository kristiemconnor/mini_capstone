class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs to :product
  belongs_to :order, optional: true
end
