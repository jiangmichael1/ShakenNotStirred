class Product < ApplicationRecord
    has_many :user_products
    has_many :users, through: :user_products
    has_many :product_drinks
    has_many :drinks, through: :product_drinks
    has_many :users, through: :product_drinks 

def add_to_cart
@shoppingcart = ShoppingCart.create
@product = Product.find(params[:id])
@shoppingcart.add(@product, @product.price)
end

    
end
